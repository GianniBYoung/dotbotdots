`rsync -avxHAX --progress / /new-disk/`

```-a  : all files, with permissions, etc..
-v  : verbose, mention files
-x  : stay on one file system
-H  : preserve hard links (not included with -a)
-A  : preserve ACLs/permissions (not included with -a)
-X  : preserve extended attributes (not included with -a)```


To improve the copy speed, add -W (--whole-file), to avoid calculating deltas/diffs of the files. This is the default when both the source and destination are specified as local paths, since the real benefit of rsync's delta-transfer algorithm is reducing network usage.

Also consider adding --numeric-ids to avoid mapping uid/gid values by user/group name.

