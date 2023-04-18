#!/bin/sh

aws s3 sync . s3://itemeter.com \
  --exclude '.git*' \
  --exclude '*.DS_Store*' \
  --exclude '*.sh' \
  --exclude 'Session.vim'

aws cloudfront create-invalidation \
  --distribution-id "E2SFD9FX0N3KNR" \
  --paths "/"
