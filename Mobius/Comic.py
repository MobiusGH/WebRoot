# coding=utf-8
import re
import sys
from urllib import request


def mkdir(path):
    '''
    创建文件夹
    '''
    import os

    # 去除首位空格
    path = path.strip()
    # 去除尾部 \ 符号
    path = path.rstrip("\\")

    isExists = os.path.exists(path)

    # 判断结果
    if not isExists:
        # 如果不存在则创建目录
        # 创建目录操作函数
        os.makedirs(path)

        print(path + ' 创建成功')
        return True

    # 如果目录存在则不创建，并提示目录已存在
    print(path + ' 目录已存在')
    return False


def xieelao(url):
    html = request.urlopen(url).read().decode('utf-8')

    regex = re.compile(r'mhtitle yahei">(.*?)[\(|<]', re.S)
    try:
        title = re.findall(regex, html)[0]
    except IndexError:
        print("Pages parsing error!")
        return

    regex = re.compile('pagelist.*?共(.*?)页', re.S)
    try:
        pages = int(re.findall(regex, html)[0]) + 1
    except IndexError:
        print("Pages parsing error!")
        return

    regex = re.compile(r'(.*)\.html')
    mainurl = re.findall(regex, url)[0]

    directory = 'G:/StoneAge/Comic/%s' % title
    mkdir(directory)
    for i in range(1, pages):
        bitNum = len(str(i))
        if bitNum == 1:
            fName = '00%d.jpg' % i
        elif bitNum == 2:
            fName = '0%d.jpg' % i
        else:
            fName = '%d.jpg' % i

        regex = re.compile('imgshow.*?src="(.*?)"', re.S)
        try:
            image = re.findall(regex, html)[0]
        except IndexError:
            print('Downloading image resource error!')
            return

        path = '%s/%s' % (directory, fName)

        request.urlretrieve(image, path)

        sys.stdout.write(' Progress : | %3d%% |\r' % (i * 100 / pages))

        if i == pages - 1:
            print('Finished......')
            return
        page_url = '%s_%d.html' % (mainurl, i + 1)
        html = request.urlopen(page_url).read().decode('utf-8')


xieelao('http://www.xieelao.net/gkmh/650.html')
