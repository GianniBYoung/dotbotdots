#!/bin/bash
git add "/home/gianni/.dotfiles/*"
git commit -m "$(curl http://whatthecommit.com/index.txt)"
git push
