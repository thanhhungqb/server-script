#!/bin/python

import os
import argparse

import dropbox
from dropbox.files import FileMetadata, FolderMetadata


def download_file(dbx, file_path, save_path=None):
	print(file_path, save_path)
	if save_path:
		dbx.files_download_to_file(save_path,file_path)
	else:	
		md, res = dbx.files_download(file_path)
		print(file_path, res.content)
	
def download_folder(dbx,src_folder,dest_folder=None):
	ret = dbx.files_list_folder(src_folder)
	file_list = [o.path_display for o in ret.entries if isinstance(o, FileMetadata)]
	folder_list = [o.path_display for o in ret.entries if isinstance(o, FolderMetadata)]
	print(file_list, folder_list)
	for f in file_list:
		dest_file = None if dest_folder is None else "{}/{}".format(dest_folder, f.split('/')[-1])
		download_file(dbx, f, dest_file)
	for fd in folder_list:
		ndest_folder = None if dest_folder is None else "{}/{}".format(dest_folder, fd.split('/')[-1])
		try: os.mkdir(ndest_folder) 
		except: pass
		download_folder(dbx, fd, ndest_folder)


		
def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('--token', help='token')
	parser.add_argument('--src', help='source foler on dropbox apps. Ex: /test')
	parser.add_argument('--dest', help='dest in machine folder. Ex: /tmp')
		
	args = parser.parse_args()
	
	dbx = dropbox.Dropbox(args.token)
	download_folder(dbx, args.src, args.dest)
	
	
if __name__ == '__main__':
	main()
	
# requires: pip install dropbox

