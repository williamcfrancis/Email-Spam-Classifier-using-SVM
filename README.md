# Email Spam Classifier using SVM
## Run the code

1. Download all the files into a single folder
2. Open octave and make sure you are in the right directory
3. Run the "Main.m" file

## Tech used
This project has implemented the following email preprocessing and normalization steps:
• Lower-casing: The entire email is converted into lower case
• Stripping HTML: All HTML tags are removed from the emails.
• Normalizing URLs: All URLs are replaced with the text \httpaddr".
• Normalizing Email Addresses: All email addresses are replaced
with the text \emailaddr".
• Normalizing Numbers: All numbers are replaced with the text
\number".
• Normalizing Dollars: All dollar signs ($) are replaced with the text
\dollar".
• Word Stemming: Words are reduced to their stemmed form.
• Removal of non-words: Non-words and punctuation have been re-
moved.

The vocabulary list was selected by choosing all words which occur at least a 100 times in the spam corpus, resulting in a list of 1899 words.

