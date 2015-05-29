#!/bin/bash

: ${OPENSCAD:="openscad"}
mkdir -p intermediate

######
# 1x #
######

#$OPENSCAD -o intermediate/1x_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[52, 46, 29]' \
#  -D 'back=[60, 40, 22]' \
#  -D 'right=[7, 48, 21]' \
#  -D 'left=[32, 45, 49]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 61, 35]' \
#  -D 'back=[50, 27, 4]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[38, 51, 54]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[56, 57, 20]' \
#  -D 'back=[28, 43, 16]' \
#  -D 'right=[18, 31, 0]' \
#  -D 'left=[26, 8, 5]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[20, 35, 11]' \
#  -D 'back=[5, 61, 54]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[31, 9, 8]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[57, 51, 34]' \
#  -D 'back=[7, 1, 39]' \
#  -D 'right=[41, 36, 11]' \
#  -D 'left=[32, 27, 37]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[61, 7, 60]' \
#  -D 'back=[53, 34, 43]' \
#  -D 'right=[37, 1, 36]' \
#  -D 'left=[24, 19, 29]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[61, 7, 60]' \
#  -D 'back=[53, 34, 43]' \
#  -D 'right=[37, 1, 36]' \
#  -D 'left=[24, 19, 29]' \
#  -D 'top=[2, 4, 33, 28, 50, 14, 59, 21]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[16, 42, 26]' \
#  -D 'back=[12, 49, 2]' \
#  -D 'right=[17, 51, 25]' \
#  -D 'left=[59, 23, 24]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[0, 32, 14]' \
#  -D 'back=[61, 41, 33]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[19, 43, 0]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[38, 10, 13]' \
#  -D 'back=[23, 6, 57]' \
#  -D 'right=[30, 31, 27, 55, 50]' \
#  -D 'left=[5, 47, 54,11]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42,  4, 25]' \
#  -D 'back=[ 12, 17,  0]' \
#  -D 'right=[59, 22, 52]' \
#  -D 'left=[30, 19, 12]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[8, 0, 62]' \
#  -D 'back=[13, 6, 49]' \
#  -D 'right=[17, 26, 39]' \
#  -D 'left=[24, 55, 29]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[46, 9, 21]' \
#  -D 'back=[63, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  1x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[46, 9, 21]' \
#  -D 'back=[63, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  -D 'top=[32, 27, 9, 36, 35, 57, 34]' \
#  1x_full_wall_lines.scad

######
# 2x #
######

#$OPENSCAD -o intermediate/2x_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28]' \
#  -D 'right=[51, 61, 12,  0, 46,  9]' \
#  -D 'left=[ 18, 22, 31, 16, 63, 59]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24]' \
#  -D 'right=[25, 16, 40, 46, 21, 40]' \
#  -D 'left=[  2, 61,  6, 29, 56,  3]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51]' \
#  -D 'right=[13, 53, 36,  6, 58, 50]' \
#  -D 'left=[ 23, 32, 44, 14, 52, 60]' \
#  2x_full_wall_lines.scad

$OPENSCAD -o intermediate/2x_full_wall_line_4.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[39, 30, 41, 18, 60, 19]' \
  -D 'back=[ 48, 12, 55, 42, 52, 20]' \
  -D 'right=[45, 44, 54, 50, 23, 17]' \
  -D 'left=[ 11, 36, 32, 22,  9, 62]' \
  2x_full_wall_lines.scad

#$OPENSCAD -o intermediate/2x_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7]' \
#  -D 'right=[38, 32, 58, 33, 49, 12]' \
#  -D 'left=[ 39, 41, 19,  4, 13, 38]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
#  -D 'right=[51, 35, 56, 43,  1,  7]' \
#  -D 'left=[ 50, 61, 53, 38,  2, 10]' \
#  2x_full_wall_lines.scad

$OPENSCAD -o intermediate/2x_full_wall_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
  -D 'front=[59,  0, 36, 57, 31, 24]' \
  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
  -D 'right=[51, 35, 56, 43,  1,  7]' \
  -D 'left=[ 50, 61, 53, 38,  2, 10]' \
  -D 'top=[  19, 37, 16, 58, 28, 63, 1, 13, 46, 18, 26, 32, 27, 9, 36, 35, 57, 34, 48, 19, 37, 16, 58, 28, 63, 1, 13, 17, 61, 44]' \
  2x_full_wall_lines.scad

#$OPENSCAD -o intermediate/2x_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24]'\
#  -D 'back=[37, 13, 1, 35, 27, 58]' \
#  -D 'right=[40, 53, 30, 63, 55, 7]' \
#  -D 'left=[30, 61, 36, 38, 16, 23]' \
#  2x_full_wall_lines.scad

$OPENSCAD -o intermediate/2x_staggered_full_wall_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[30, 32, 33, 37, 43, 10]' \
  -D 'back=[50, 54, 62, 5, 52, 48]' \
  -D 'right=[56, 4, 9, 39, 59, 41]' \
  -D 'left=[7, 31, 44, 22, 34, 12]' \
  2x_full_wall_lines.scad

$OPENSCAD -o intermediate/2x_staggered_full_wall_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[42, 28, 58, 29, 2, 57]' \
  -D 'back=[19, 9, 33, 8, 55, 12]' \
  -D 'right=[50, 22, 39, 0, 45, 21]' \
  -D 'left=[1, 24, 51, 10, 15, 28]' \
  2x_full_wall_lines.scad

#$OPENSCAD -o intermediate/2x_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25, 2]' \
#  -D 'back=[59, 24,  0, 27, 14, 5]' \
#  -D 'right=[29, 11, 34, 61, 12, 37, 18]' \
#  -D 'left=[9, 36,19, 37, 16, 58]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26]' \
#  -D 'back=[57, 60, 51, 35, 34, 33]' \
#  -D 'right=[22, 53, 60, 21, 0, 5, 46]' \
#  -D 'left=[29, 23, 31, 38, 0, 24]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27, 8, 3, 56, 44, 59]' \
#  -D 'back=[1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18, 31, 6, 18, 2]' \
#  -D 'left=[22, 49, 17, 1, 41, 59]' \
#  2x_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27, 8, 3, 56, 44, 59]' \
#  -D 'back=[1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18, 31, 6, 18, 2]' \
#  -D 'left=[22, 49, 17, 1, 41, 59]' \
#  -D 'top=[31, 38, 0, 24, 17, 20, 5, 57, 25, 35, 61, 27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2, 26, 13, 39, 31, 22, 4]' \
#  2x_full_wall_lines.scad

