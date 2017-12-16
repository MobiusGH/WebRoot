import os
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont


def waterMark(imageFile):
    # 设置所使用的字体
    font = ImageFont.truetype(r"C:\Windows\Fonts\Arial.ttf", 1)

    # 打开图片
    im1 = Image.open(imageFile)

    # 画图
    draw = ImageDraw.Draw(im1)
    draw.text((160, 0), "7", (255, 0, 0), font=font)  # 设置文字位置/内容/颜色/字体

    # 另存图片
    im1.save(imageFile)


if __name__ == "__main__":
    dirPath = r"E:\英雄时刻\demo"
    try:
        dirlist = os.listdir(dirPath)
        print("共找到：%d个文件" % len(dirlist))
        for item in dirlist:
            filePath = os.path.join(dirPath, item)
            waterMark(filePath)
    except Exception as e:
        print(e)
