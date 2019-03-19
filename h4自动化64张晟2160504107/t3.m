img3=imread('test3_corrupt.pgm');
subplot(2,2,1),imshow(img3);
f=double(img3);     % 数据类型转换，MATLAB不支持图像的无符号整型的计算
g=fft2(f);        % 傅立叶变换
g=fftshift(g);     % 转换数据矩阵
[N,M]=size(g);
img30 = fspecial('gaussian',[M,N],0.7);
img31 = imfilter(img3,img30,'replicate');
img32=imsubtract(img3,img31); 
subplot(2,2,2),imshow(img31);   % 显示滤波处理后的图像
subplot(2,2,3),imshow(img32);
img33=img3+10*img32;
subplot(2,2,4),imshow(img33);
p=getframe(gcf);
imwrite(p.cdata,['t3test3unsharp.jpg']);

img4=imread('test4 copy.bmp');
subplot(2,2,1),imshow(img4);
f=double(img4);     % 数据类型转换，MATLAB不支持图像的无符号整型的计算
g=fft2(f);        % 傅立叶变换
g=fftshift(g);     % 转换数据矩阵
[N,M]=size(g);
img40 = fspecial('gaussian',[M,N],0.7);
img41 = imfilter(img4,img40,'replicate');
img42=imsubtract(img4,img41); 
subplot(2,2,2),imshow(img41);   % 显示滤波处理后的图像
subplot(2,2,3),imshow(img42);
img4=img4+10*img42;
subplot(2,2,4),imshow(img4);
p=getframe(gcf);
imwrite(p.cdata,['t3test4unsharp.jpg']);

img301=edge(img3,'Sobel');
img302=edge(img3,'log');
img303=edge(img3,'Canny');
subplot(2,2,1)
imshow(img3)
subplot(2,2,2)
imshow(img301)
subplot(2,2,3)
imshow(img302)
subplot(2,2,4)
imshow(img303)
p=getframe(gcf);
imwrite(p.cdata,['t3test3edge.jpg']);
img401=edge(img4,'Sobel');
img402=edge(img4,'log');
img403=edge(img4,'Canny');
subplot(2,2,1)
imshow(img4)
subplot(2,2,2)
imshow(img401)
subplot(2,2,3)
imshow(img402)
subplot(2,2,4)
imshow(img403)
p=getframe(gcf);
imwrite(p.cdata,['t3test4edge.jpg']);