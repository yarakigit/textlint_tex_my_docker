FROM node
WORKDIR /workdir
# https://github.com/textlint/textlint
RUN npm install -g textlint \
# 1 
## https://github.com/textlint-ja/textlint-rule-preset-ja-spacing
&& npm install -g textlint-rule-preset-ja-spacing \
# 2 
## https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing
&& npm install -g textlint-rule-preset-ja-technical-writing \
# 1 latex plugin
## https://github.com/textlint/textlint-plugin-latex2e
&& npm install -g textlint-plugin-latex2e
CMD ["bash"]