# coding=utf-8

from urllib import request
import re
# import xlrd#读取EXCCEL文件
import xlwt  # 写入EXCEL文件
from numpy import *


# url='http://search.17k.com/search.xhtml?c.st=0&c.q=%E5%A4%A9%E8%9A%95%E5%9C%9F%E8%B1%86'
# def getHtml(url):
#     page=urllib.request.urlopen(url)
#     html=page.read().decode(encoding='utf-8',errors='strict')
#     return html
# print(getHtml(url))
def getPageHtml(url):
    novelList = request.urlopen(url).read().decode(encoding='utf-8')
    return novelList


url = 'http://search.17k.com/search.xhtml?c.st=0&c.q=%E5%A4%A9%E8%9A%95%E5%9C%9F%E8%B1%86'

reg = r'<dl>\s*<dt>\s*<a href="\S*" target="_blank">\s*(.*?)\s*</a>\s*.*?\s*</dt>\s*<dd>\s*<ul>\s*<li class="bq">\s*<span class="ls">作者：<a href=".*?" target="_blank">(.*?)</a></span>\s*<span>类别：<a href=".*?" target="_blank">\S*</a></span>\s*<span>字数：<code>\d*</code></span>\s*</li>\s*<li class="bq10"><strong>标签：</strong>\s*<p>\s*.*?\s*</p>\s*</li>\s*<li><strong>简介：</strong>\s*<p>\s*<a href="(.*?)" target="_blank">(.*?)</a>'
pattern = re.compile(reg, re.S)
novel = pattern.findall(getPageHtml(url))

# xlFile = r'e:\novel.xls'
# wb = xlwt.Workbook(encoding='utf-8')
# ws = wb.add_sheet('NovelList')
#
# wb.save(xlFile)
headData = ['小说名称', '作者', '小说目录链接', '内容']
for item in range(0, len(headData)):
    print(item)
print(len(novel[0]))
