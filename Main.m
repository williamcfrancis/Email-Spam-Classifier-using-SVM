clear;
close all;
clc

load('spamTrain.mat');

fprintf('\nTraining Linear SVM\n')

C = 0.1;
model = trainSVM(X, y, C, @linearKernel);

p = predictSVM(model, X);

fprintf('Training Accuracy: %f\n', mean(double(p == y)) * 100);

load('spamTest.mat');
fprintf('\nEvaluating the trained Linear SVM on a test set ...\n')
p = predictSVM(model, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(p == ytest)) * 100);
pause;

[weight, idx] = sort(model.w, 'descend');
vocabList = getVocabList();

fprintf('\nTop predictors of spam: \n');
for i = 1:15
    fprintf(' %-15s (%f) \n', vocabList{idx(i)}, weight(i));
end

fprintf('\n\n');
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

filename = 'InsertEmailHere.txt';
file_contents = readFile(filename);
word_indices  = processEmail(file_contents);
x = emailFeatures(word_indices);
p = predictSVM(model, x);

fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename, p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');

