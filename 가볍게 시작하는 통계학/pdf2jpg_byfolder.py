# -*- coding:utf-8 -*-
# 폴더 안에 있는 모든 pdf를 jpg로 변환한다.

from pdf2image import convert_from_path
import os

folder_name = "FIGURES"
new_folder_name = "FIGURES_TRANS"

main_path = os.getcwd()
work_path = os.path.join(main_path, folder_name)
trans_path = os.path.join(main_path, new_folder_name)
file_list = []

def trans_file(pdf_path):
  jpg_path = pdf_path.replace(work_path, trans_path, 1).replace(".pdf", "")
  pages = convert_from_path(pdf_path)

  if(type(pages) is not list):
      print(f'Can not convert file {pdf_path}')
      return False

  if(len(pages) > 1):
      os.mkdir(jpg_path)     
      for i, page in enumerate(pages):
          page.save(f'{jpg_path}{i+1}.jpg', "JPEG")
  else:
      pages[0].save(f'{jpg_path}.jpg', "JPEG")
  return True

if(os.path.exists(work_path) == False):
    print("Folder not found")
    exit()

if(os.path.exists(new_folder_name) and os.path.isdir(new_folder_name)):
    if(len(os.listdir(new_folder_name)) != 0):
      print("Trans folder already exist with values")
      exit()
else:
    os.mkdir(new_folder_name)

for (root, directories, files) in os.walk(work_path):
    for d in directories:
        os.mkdir(os.path.join(new_folder_name, d))

    for file in files:
        file_path = os.path.join(root, file)
        if(file_path.rsplit(".", 1)[1] == "pdf"):
            file_list.append(file_path)

file_list_length = len(file_list)
for i, file_path in enumerate(file_list):
    if(trans_file(file_path)):
        print(f'Trans Complate[{i+1}/{file_list_length}]: {file_path}')
print("Done")