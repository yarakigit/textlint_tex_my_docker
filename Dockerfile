FROM node
ENV APP_PATH='/workdir'
WORKDIR $APP_PATH
# https://github.com/textlint/textlint
RUN npm install -g textlint \
# 1 
## https://github.com/textlint-ja/textlint-rule-preset-ja-spacing
&& npm install -g textlint-rule-preset-ja-spacing \
# 2 
## https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing
&& npm install -g textlint-rule-preset-ja-technical-writing \
#  3
## https://github.com/kn1cht/textlint-rule-preset-ja-engineering-paper
&& npm install -g textlint-rule-preset-ja-engineering-paper \
# 4
## https://github.com/textlint-rule/textlint-rule-prh
&& npm install -g textlint-rule-prh \
# 5
## https://github.com/hata6502/textlint-rule-ja-simple-user-dictionary
&& npm install -g textlint-rule-ja-simple-user-dictionary \
# 6
## https://www.npmjs.com/package/textlint-rule-en-spell
&& npm install -g textlint-rule-en-spell \
# 1 latex plugin
## https://github.com/textlint/textlint-plugin-latex2e
&& npm install -g textlint-plugin-latex2e \
#1 
## https://github.com/textlint/textlint-filter-rule-comments
&& npm install -g textlint-filter-rule-comments
CMD ["bash"]