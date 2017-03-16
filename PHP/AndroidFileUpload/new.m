clc;
%Image = imread('C:\Users\ThE WaRrIoR\Desktop\B.E Project\test51.jpg');
Image = imread('IMG8.jpg');
R = imresize(Image,[452 1024]);
BW = im2bw(R,0.4);


mkdir('id500');
mkdir('st1');
mkdir('daid2');
%mkdir('dbid1');

%Identification Mark



C1= imcrop(BW,[15 280 60 60]);

imshow(C1);
imwrite(C1,'id500/4.jpg');

C1= imcrop(BW,[10 260 60 60]);
imshow(C1);

imwrite(C1,'id500/5.jpg');

C1= imcrop(BW,[10 290 60 60]);
imwrite(C1,'id500/6.jpg');

C1= imcrop(BW,[20 230 60 60]);

imshow(C1);
imwrite(C1,'id500/7.jpg');

C1= imcrop(BW,[20 240 60 60]);

imshow(C1);
imwrite(C1,'id500/8.jpg');


C1= imcrop(BW,[15 260 60 60]);

imshow(C1);
imwrite(C1,'id500/9.jpg');

C1= imcrop(BW,[15 300 60 60]);

imshow(C1);
imwrite(C1,'id500/10.jpg');

C1= imcrop(BW,[15 270 60 60]);

imshow(C1);
imwrite(C1,'id500/11.jpg');

C1= imcrop(BW,[15 280 60 60]);

imshow(C1);
imwrite(C1,'id500/12.jpg');

C1= imcrop(BW,[10 220 60 60]);

imshow(C1);
imwrite(C1,'id500/13.jpg');

C1= imcrop(BW,[10 270 60 60]);

imshow(C1);
imwrite(C1,'id500/14.jpg');

C1= imcrop(BW,[20 270 60 60]);

imshow(C1);
imwrite(C1,'id500/15.jpg');

C1= imcrop(BW,[20 310 60 60]);

imshow(C1);
imwrite(C1,'id500/16.jpg');



Training_Set = dlmread('myFile1.txt');
train_label = dlmread('myFile2.txt');



% Load Datasets
 
Testset  = 'C:\xampp\htdocs\PHP\AndroidFileUpload\id500';



% we need to process the images first.
% Convert your images into grayscale
% Resize the images

width=100; height=100;
TestSet =  cell([], 1);
  for i=1:length(dir(fullfile(Testset,'*.jpg')))

     % Training set process
     k = dir(fullfile(Testset,'*.jpg'));
     k = {k(~[k.isdir]).name};
     for j=1:length(k)
        tempImage       = imread(horzcat(Testset,filesep,k{j}));
        imgInfo         = imfinfo(horzcat(Testset,filesep,k{j}));

         % Image transformation
         if strcmp(imgInfo.ColorType,'grayscale')
            TestSet{j}   = double(imresize(tempImage,[width height])); % array of images
         else
            TestSet{j}   = double(imresize(rgb2gray(tempImage),[width height])); % array of images
         end
     end
  end

Test_Set=[];
for j=1:length(TestSet)
    Test_set_tmp   = reshape(TestSet{j},1, 100*100);
    Test_Set=[Test_Set;Test_set_tmp];
end

% Perform first run of svm
SVMStruct = svmtrain(Training_Set , train_label, 'kernel_function', 'linear');
Group       = svmclassify(SVMStruct, Test_Set);

[rows,cols] = size(Group);
max1=0;
for col = 1:cols
    for row = 1:rows
        if Group(row,col) == 1
            max1=1;
        else 
        end
    end
end  







%R = im2bw(R,0.2);

%Denomination above the Identification Mark
C4= imcrop(R,[20 270 90 40]);
BW1 = im2bw(C4,0.7);
imshow(C4);
imwrite(BW1,'daid2/1.jpg');


C4= imcrop(R,[20 270 90 40]);

BW1 = im2bw(C4,0.6);
imshow(C4);
imwrite(BW1,'daid2/2.jpg');

C4= imcrop(R,[20 270 90 40]);
BW1 = im2bw(C4,0.5); 
imshow(C4);
imwrite(BW1,'daid2/3.jpg');

C4= imcrop(R,[20 270 90 40]);
BW1 = im2bw(C4,0.4);
imshow(C4);
imwrite(BW1,'daid2/4.jpg');

C4= imcrop(R,[20 260 90 40]);
BW1 = im2bw(C4,0.7);
imshow(C4);
imwrite(BW1,'daid2/5.jpg');
C4= imcrop(R,[20 260 90 40]);
BW1 = im2bw(C4,0.6);
imshow(C4);

imwrite(BW1,'daid2/6.jpg');
C4= imcrop(R,[20 260 90 40]);
BW1 = im2bw(C4,0.5);
imshow(C4);
imwrite(BW1,'daid2/7.jpg');

C4= imcrop(R,[20 260 90 40]);
BW1 = im2bw(C4,0.4);
imshow(C4);
imwrite(BW1,'daid2/8.jpg');

C4= imcrop(R,[20 250 90 40]);
BW1 = im2bw(C4,0.7);
imwrite(BW1,'daid2/9.jpg');

C4= imcrop(R,[20 250 90 40]);
BW1 = im2bw(C4,0.6);
imwrite(BW1,'daid2/10.jpg');
C4= imcrop(R,[20 250 90 40]);
BW1 = im2bw(C4,0.5);
imshow(C4);
imwrite(BW1,'daid2/11.jpg');

C4= imcrop(R,[20 250 90 40]);
BW1 = im2bw(C4,0.4);
imshow(C4);
imwrite(BW1,'daid2/12.jpg');
C4= imcrop(R,[20 240 90 40]);
BW1 = im2bw(C4,0.5);
imshow(C4);
imwrite(BW1,'daid2/13.jpg');



Training_Set = dlmread('myFile3.txt');
train_label = dlmread('myFile4.txt');




% Load Datasets
 
Testset  = 'C:\xampp\htdocs\PHP\AndroidFileUpload\daid2';



% we need to process the images first.
% Convert your images into grayscale
% Resize the images

width=100; height=100;
TestSet =  cell([], 1);
  for i=1:length(dir(fullfile(Testset,'*.jpg')))

     % Training set process
     k = dir(fullfile(Testset,'*.jpg'));
     k = {k(~[k.isdir]).name};
     for j=1:length(k)
        tempImage       = imread(horzcat(Testset,filesep,k{j}));
        imgInfo         = imfinfo(horzcat(Testset,filesep,k{j}));

         % Image transformation
         if strcmp(imgInfo.ColorType,'grayscale')
            TestSet{j}   = double(imresize(tempImage,[width height])); % array of images
         else
            TestSet{j}   = double(imresize(rgb2gray(tempImage),[width height])); % array of images
         end
     end
  end




Test_Set=[];
for j=1:length(TestSet)
    Test_set_tmp   = reshape(TestSet{j},1, 100*100);
    Test_Set=[Test_Set;Test_set_tmp];
end

% Perform first run of svm
SVMStruct = svmtrain(Training_Set , train_label, 'kernel_function', 'linear');
Group       = svmclassify(SVMStruct, Test_Set);
max2=0;
[rows,cols] = size(Group);
for col = 1:cols
    for row = 1:rows
        if Group(row,col) == 1
            max2=1;
        else
        end
    end
end  




%security thread

position = [560 180 80 560];
C3 = imcrop(BW, position);
imwrite(C3,'st1/1.jpg');

position = [550 180 80 560];
C3 = imcrop(BW, position);
imwrite(C3,'st1/2.jpg');

position = [540 180 80 560];
C3 = imcrop(BW, position);
imwrite(C3,'st1/3.jpg');

position = [530 180 80 560];
C3 = imcrop(BW, position);
imwrite(C3,'st1/4.jpg');

position = [560 180 80 600];
C3 = imcrop(BW, position);

imshow(C3);
imwrite(C3,'st1/5.jpg');
position = [520 180 80 610];
C3 = imcrop(BW, position);
imwrite(C3,'st1/6.jpg');

position = [560 180 80 620];
C3 = imcrop(BW, position);
imwrite(C3,'st1/7.jpg');

position = [570 180 80 630];
C3 = imcrop(BW, position);

imshow(C3);
imwrite(C3,'st1/8.jpg');

position = [580 180 80 550];
C3 = imcrop(BW, position);

imshow(C3);
imwrite(C3,'st1/9.jpg');
position = [590 180 80 540];
C3 = imcrop(BW, position);


imwrite(C3,'st1/10.jpg');
position = [600 180 80 530];
C3 = imcrop(BW, position);

imshow(C3);
imwrite(C3,'st1/11.jpg');
position = [560 180 80 520];
C3 = imcrop(BW, position);

imwrite(C3,'st1/12.jpg');

Training_Set = dlmread('myFile5.txt');
train_label = dlmread('myFile6.txt');




% Load Datasets
 
Testset  = 'C:\xampp\htdocs\PHP\AndroidFileUpload\st1';



% we need to process the images first.
% Convert your images into grayscale
% Resize the images

width=100; height=100;
TestSet =  cell([], 1);
  for i=1:length(dir(fullfile(Testset,'*.jpg')))

     % Training set process
     k = dir(fullfile(Testset,'*.jpg'));
     k = {k(~[k.isdir]).name};
     for j=1:length(k)
        tempImage       = imread(horzcat(Testset,filesep,k{j}));
        imgInfo         = imfinfo(horzcat(Testset,filesep,k{j}));

         % Image transformation
         if strcmp(imgInfo.ColorType,'grayscale')
            TestSet{j}   = double(imresize(tempImage,[width height])); % array of images
         else
            TestSet{j}   = double(imresize(rgb2gray(tempImage),[width height])); % array of images
         end
     end
  end




Test_Set=[];
for j=1:length(TestSet)
    Test_set_tmp   = reshape(TestSet{j},1, 100*100);
    Test_Set=[Test_Set;Test_set_tmp];
end

% Perform first run of svm
SVMStruct = svmtrain(Training_Set , train_label, 'kernel_function', 'linear');
Group       = svmclassify(SVMStruct, Test_Set);

max3=0;
[rows,cols] = size(Group);
for col = 1:cols
    for row = 1:rows
        if Group(row,col) == 1
            max3=1;
        else
        end
    end
end  



if max1==0
    final=0;
else if max2==0
        final=0;
    else if max3==0
            final=0;
        else final=1;
            
        end
    end
end
            dlmwrite('result.txt',final);

