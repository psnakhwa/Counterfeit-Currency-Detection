
clc
Image = imread('C:\Users\ThE WaRrIoR\Desktop\B.E Project\test516.jpg');
R = imresize(Image,[452 1024]);
BW = im2bw(R,0.4);
BW5 = im2bw(R,0.2);
mkdir('id500');
mkdir('st1');
mkdir('daid1');
%mkdir('dbid1');

figure;



%Identification Mark



C1= imcrop(BW,[15 280 60 60]);
subplot(4,4,4);
imshow(C1);
imwrite(C1,'id500/4.jpg');

C1= imcrop(BW,[10 260 60 60]);
subplot(4,4,5);
imshow(C1);

imwrite(C1,'id500/5.jpg');

C1= imcrop(BW,[10 280 60 60]);
subplot(4,4,6);
imshow(C1);
imwrite(C1,'id500/6.jpg');

C1= imcrop(BW,[20 280 60 60]);
subplot(4,4,7);
imshow(C1);
imwrite(C1,'id500/7.jpg');

C1= imcrop(BW,[20 260 60 60]);
subplot(4,4,8);
imshow(C1);
%imwrite(C1,'id500/8.jpg');


C1= imcrop(BW5,[15 260 60 60]);
subplot(4,4,9);
imshow(C1);
imwrite(C1,'id500/9.jpg');

C1= imcrop(BW5,[15 250 60 60]);
subplot(4,4,10);
imshow(C1);
imwrite(C1,'id500/10.jpg');

C1= imcrop(BW5,[15 270 60 60]);
subplot(4,4,11);
imshow(C1);
imwrite(C1,'id500/11.jpg');

C1= imcrop(BW5,[15 280 60 60]);
subplot(4,4,12);
imshow(C1);
imwrite(C1,'id500/12.jpg');

C1= imcrop(BW5,[10 260 60 60]);
subplot(4,4,13);
imshow(C1);
imwrite(C1,'id500/13.jpg');

C1= imcrop(BW5,[10 280 60 60]);
subplot(4,4,14);
imshow(C1);
imwrite(C1,'id500/14.jpg');

C1= imcrop(BW5,[20 280 60 60]);
subplot(4,4,15);
imshow(C1);
imwrite(C1,'id500/15.jpg');

C1= imcrop(BW5,[20 260 60 60]);
subplot(4,4,16);
imshow(C1);
imwrite(C1,'id500/16.jpg');



