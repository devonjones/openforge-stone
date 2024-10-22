#!/bin/bash

: ${OPENSCAD:="openscad"}
mkdir -p intermediate

#######
# 1x1 #
#######

#$OPENSCAD -o intermediate/1x1_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[52, 46, 29]' \
#  -D 'back=[60, 40, 22]' \
#  -D 'right=[7, 48, 21]' \
#  -D 'left=[32, 45, 49]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 61, 35]' \
#  -D 'back=[50, 27, 4]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[38, 51, 54]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[56, 57, 20]' \
#  -D 'back=[28, 43, 16]' \
#  -D 'right=[18, 31, 0]' \
#  -D 'left=[26, 8, 5]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[20, 35, 11]' \
#  -D 'back=[5, 61, 54]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[31, 9, 8]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[57, 51, 34]' \
#  -D 'back=[7, 1, 39]' \
#  -D 'right=[41, 36, 11]' \
#  -D 'left=[32, 27, 37]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[61, 7, 60]' \
#  -D 'back=[53, 34, 43]' \
#  -D 'right=[37, 1, 36]' \
#  -D 'left=[24, 19, 29]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[61, 7, 60]' \
#  -D 'back=[53, 34, 43]' \
#  -D 'right=[37, 1, 36]' \
#  -D 'left=[24, 19, 29]' \
#  -D 'top=[2, 4, 33, 28, 50, 14, 59, 21]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[16, 42, 26]' \
#  -D 'back=[12, 49, 2]' \
#  -D 'right=[17, 51, 25]' \
#  -D 'left=[59, 23, 24]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[0, 32, 14]' \
#  -D 'back=[61, 41, 33]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[19, 43, 0]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[38, 10, 13]' \
#  -D 'back=[23, 6, 57]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[5, 47, 54]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42,  4, 25]' \
#  -D 'back=[ 12, 17,  0]' \
#  -D 'right=[59, 22, 52]' \
#  -D 'left=[30, 19, 12]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[8, 0, 62]' \
#  -D 'front=[53, 61, 35]' \
#  -D 'back=[50, 27, 4]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[38, 51, 54]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[46, 9, 21]' \
#  -D 'back=[63, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  1x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/1x1_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[46, 9, 21]' \
#  -D 'back=[63, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  -D 'top=[32, 27, 9, 36, 35, 57, 34]' \
#  1x1_full_wall_lines.scad

#######
# 2x1 #
#######

#$OPENSCAD -o intermediate/2x1_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28]' \
#  -D 'right=[51, 61, 12]' \
#  -D 'left=[ 18, 22, 31]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24]' \
#  -D 'right=[25, 27, 40]' \
#  -D 'left=[  2, 61,  6]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51]' \
#  -D 'right=[13, 53, 36]' \
#  -D 'left=[ 23, 32, 44]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[39, 30, 41, 18, 60, 19]' \
#  -D 'back=[  0, 12, 55, 42, 52, 20]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[ 31,  9,  8]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7]' \
#  -D 'right=[38, 32, 58]' \
#  -D 'left=[ 39, 41, 19]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
#  -D 'right=[51, 35, 56]' \
#  -D 'left=[ 50, 61, 53]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[59,  0, 36, 57, 31, 24]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
#  -D 'right=[51, 35, 56]' \
#  -D 'left=[ 50, 61, 53]' \
#  -D 'top=[  19, 37, 16, 58, 28, 63, 1, 13, 46, 18, 26, 32, 27, 9, 36, 35, 57, 34, 48, 19, 37, 16, 58, 28, 63, 1, 13, 17, 61, 44]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24]'\
#  -D 'back=[ 37, 13,  1, 35, 27, 58]' \
#  -D 'right=[40, 53, 30]' \
#  -D 'left=[ 30, 61, 36]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10]' \
#  -D 'back=[ 50, 54, 62, 5, 52, 37]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[ 19, 43,  0]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42, 28, 58, 29, 2, 57]' \
#  -D 'back=[19, 9, 33, 8, 55, 12]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[  5, 47, 54]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25, 2]' \
#  -D 'back=[ 59, 24,  0, 27, 14, 5]' \
#  -D 'right=[29, 11, 34]' \
#  -D 'left=[  9, 36, 19]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26]' \
#  -D 'back=[ 57, 60, 51, 35, 34, 33]' \
#  -D 'right=[22, 53, 60]' \
#  -D 'left=[ 29, 23, 31]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27,  8,  3, 56, 44, 59]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18]' \
#  -D 'left=[ 22, 49, 17]' \
#  2x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x1_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27,  8,  3, 56, 44, 59]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18]' \
#  -D 'left=[ 22, 49, 17]' \
#  -D 'top= [31, 38, 0, 24, 17, 20, 5, 57, 25, 35, 61, 27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2, 26, 13, 39, 31, 22, 4]' \
#  2x1_full_wall_lines.scad

#######
# 2x2 #
#######

#$OPENSCAD -o intermediate/2x2_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28]' \
#  -D 'right=[51, 61, 12,  0, 46,  9]' \
#  -D 'left=[ 18, 22, 31, 16, 63, 59]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24]' \
#  -D 'right=[25, 16, 40, 46, 21, 40]' \
#  -D 'left=[  2, 61,  6, 29, 56,  3]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51]' \
#  -D 'right=[13, 53, 36,  6, 58, 50]' \
#  -D 'left=[ 23, 32, 44, 14, 52, 60]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[39, 30, 41, 18, 60, 19]' \
#  -D 'back=[  1, 12, 55, 42, 52, 20]' \
#  -D 'right=[45, 44, 54, 50, 23, 17]' \
#  -D 'left=[ 11, 36, 32, 22,  9, 62]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7]' \
#  -D 'right=[38, 32, 58, 33, 49, 12]' \
#  -D 'left=[ 39, 41, 19,  4, 13, 38]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
#  -D 'right=[51, 35, 56, 43,  1,  7]' \
#  -D 'left=[ 50, 61, 53, 38,  2, 10]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[59,  0, 36, 57, 31, 24]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18]' \
#  -D 'right=[51, 35, 56, 43,  1,  7]' \
#  -D 'left=[ 50, 61, 53, 38,  2, 10]' \
#  -D 'top=[  19, 37, 16, 58, 28, 63, 1, 13, 46, 18, 26, 32, 27, 9, 36, 35, 57, 34, 48, 19, 37, 16, 58, 28, 63, 1, 13, 17, 61, 44]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24]'\
#  -D 'back=[37, 13, 1, 35, 27, 58]' \
#  -D 'right=[40, 53, 30, 63, 55, 7]' \
#  -D 'left=[30, 61, 36, 38, 16, 23]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10]' \
#  -D 'back=[ 50, 54, 62,  5, 52,  1]' \
#  -D 'right=[56, 4, 9, 39, 59, 41]' \
#  -D 'left=[7, 31, 44, 22, 34, 12]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42, 28, 58, 29,  2, 57]' \
#  -D 'back=[ 19,  9, 33,  8, 55, 12]' \
#  -D 'right=[50, 22, 39,  0, 45, 21]' \
#  -D 'left=[  1, 24, 51, 10, 32, 28]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25, 2]' \
#  -D 'back=[59, 24,  0, 27, 14, 5]' \
#  -D 'right=[29, 11, 34, 61, 12, 37, 18]' \
#  -D 'left=[9, 36,19, 37, 16, 58]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_taggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26]' \
#  -D 'back=[57, 60, 51, 35, 34, 33]' \
#  -D 'right=[22, 53, 60, 21, 0, 5, 46]' \
#  -D 'left=[29, 23, 31, 38, 0, 24]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27, 8, 3, 56, 44, 59]' \
#  -D 'back=[1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18, 31, 6, 18, 2]' \
#  -D 'left=[22, 49, 17, 1, 41, 59]' \
#  2x2_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/2x2_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27, 8, 3, 56, 44, 59]' \
#  -D 'back=[1, 26, 13, 39, 31, 22]' \
#  -D 'right=[39, 63, 18, 31, 6, 18, 2]' \
#  -D 'left=[22, 49, 17, 1, 41, 59]' \
#  -D 'top=[31, 38, 0, 24, 17, 20, 5, 57, 25, 35, 61, 27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2, 26, 13, 39, 31, 22, 4]' \
#  2x2_full_wall_lines.scad

#######
# 3x1 #
#######

#$OPENSCAD -o intermediate/3x1_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5, 51, 61]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28, 18, 22]' \
#  -D 'right=[51, 61, 12]' \
#  -D 'left=[ 18, 22, 31]' \
#  3x1_full_wall_lines.scad
#
$OPENSCAD -o intermediate/3x1_full_wall_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[21, 19, 54, 11, 26, 45, 25,  0]' \
  -D 'back=[  1, 20, 10,  4, 63, 24,  2, 61]' \
  -D 'right=[ 0,  0,  0]' \
  -D 'left=[  2, 61,  6]' \
  3x1_full_wall_lines.scad
#  -D 'front=[21, 19, 54, 11, 26, 45, 25, 16]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24,  2, 61]' \ <-
#  -D 'right=[25, 16, 40]' \
#  -D 'left=[  2, 61,  6]' \
#
#$OPENSCAD -o intermediate/3x1_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35, 13, 53]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51, 23, 32]' \
#  -D 'right=[13, 53, 36]' \
#  -D 'left=[ 23, 32, 44]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[20, 35, 11, 32, 38, 49, 23, 41]' \
#  -D 'back=[  0, 12, 55, 42, 52, 20, 11, 36]' \
#  -D 'right=[45, 44, 54]' \
#  -D 'left=[ 11, 36, 32]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[8, 0, 62, 17, 26, 39, 44, 18, 53, 43]' \
#  -D 'back=[13, 6, 49, 24, 55, 29, 35, 25, 58, 57]' \
#  -D 'right=[38, 32, 58]' \
#  -D 'left=[ 39, 41, 19]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10, 38, 32]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7, 39, 41]' \
#  -D 'right=[51, 35, 56]' \
#  -D 'left=[ 50, 61, 53]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[53, 63,  6, 62, 40, 10, 38, 32]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7, 39, 41]' \
#  -D 'right=[51, 35, 56]' \
#  -D 'left=[ 50, 61, 53]' \
#  -D 'top=[  19, 25, 38, 50, 61, 46, 21, 26, 13, 39, 31, 22,  4,  1, 58, 25, 35, 61, 27, 8, 24, 3, 56, 44, 59]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24, 63, 55]' \
#  -D 'back=[ 37, 13,  1, 35, 27, 58, 40, 53]' \
#  -D 'right=[40, 53, 30]' \
#  -D 'left=[ 30, 61, 36]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10, 56,  4]' \
#  -D 'back=[ 50, 54, 62,  5, 52, 48, 39, 59]' \
#  -D 'right=[56, 4, 9]' \
#  -D 'left=[7, 31, 44]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42, 28, 58, 29,  2, 57, 50, 22]' \
#  -D 'back=[ 19,  9, 33,  8, 55, 12,  0, 45]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[  5, 47, 54]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25, 2, 29, 11]' \
#  -D 'back=[ 59, 24,  0, 27, 14, 5, 54, 45]' \
#  -D 'right=[29, 11, 34]' \
#  -D 'left=[  9, 36, 19]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26, 22, 53]' \
#  -D 'back=[ 57, 60, 51, 35, 34, 33,  3, 28]' \
#  -D 'right=[22, 53, 60]' \
#  -D 'left=[ 29, 23, 31]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1]' \
#  -D 'right=[39, 63, 18]' \
#  -D 'left=[ 22, 49, 17]' \
#  3x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/3x1_staggered_ull_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1]' \
#  -D 'right=[39, 63, 18]' \
#  -D 'left=[ 22, 49, 17]' \
#  -D 'top= [31, 38, 0, 24, 17, 20, 5, 57, 25, 35, 61, 27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2, 26, 13, 39, 31, 22, 4]' \
#  3x1_full_wall_lines.scad

#######
# 4x1 #
#######

#$OPENSCAD -o intermediate/4x1_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5, 51, 61, 12,  0]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28, 18, 22, 31, 16]' \
#  -D 'right=[ 7, 48, 21]' \
#  -D 'left=[ 32, 45, 49]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45, 25, 16, 40, 46]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24,  2, 61,  6, 29]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[ 38, 51, 54]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35, 13, 53, 36,  6]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51, 23, 32, 44, 14]' \
#  -D 'right=[18, 31,  0]' \
#  -D 'left=[ 26,  8,  5]' \
#  4x1_full_wall_lines.scad
#
$OPENSCAD -o intermediate/4x1_full_wall_line_4.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[39, 30, 41, 18, 60,  0,  0, 44, 54, 50]' \
  -D 'back=[ 12, 55, 42, 52, 20,  0,  0, 32, 22,  9]' \
  -D 'right=[26, 18, 40]' \
  -D 'left=[ 31,  9,  8]' \
  4x1_full_wall_lines.scad
#  -D 'front=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50]' \
#  -D 'back=[ 12, 55, 42, 52, 20, 11, 36, 32, 22,  9]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[ 31,  9,  8]' \
#
#$OPENSCAD -o intermediate/4x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10, 38, 32, 58, 33]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7, 39, 41, 19,  4]' \
#  -D 'right=[41, 36, 11]' \
#  -D 'left=[ 32, 27, 37]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  -D 'top=[  19, 37, 12, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20, 5, 57, 25, 35, 61, 23]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24, 63, 55,  7, 30, 61]' \
#  -D 'back=[ 37, 13,  1, 35, 27, 58, 40, 53, 30, 36, 38]' \
#  -D 'right=[17, 51, 25]' \
#  -D 'left=[ 59, 23, 24]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10, 56,  4,  9,  7, 31]' \
#  -D 'back=[ 50, 54, 62,  5, 52,  0, 39, 59, 41, 44, 22]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[ 19, 43,  0]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42, 28, 58, 29,  2, 57, 50, 22, 39,  1, 24]' \
#  -D 'back=[ 19,  9, 33,  8, 55, 12,  0, 45, 21, 51, 10]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[  5, 47, 54]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25,  2, 29, 11, 34, 61, 12]' \
#  -D 'back=[ 59, 24,  0, 27, 14,  5, 54, 45, 56,  1, 37]' \
#  -D 'right=[59, 22, 52]' \
#  -D 'left=[ 30, 19, 12]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21, 0]' \
#  -D 'back=[ 57, 60, 51, 35, 34, 33,  3, 28, 25, 31, 12]' \
#  -D 'right=[17, 26, 39]' \
#  -D 'left=[ 24, 55, 29]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[  3, 52, 60]' \
#  4x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/4x1_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  -D 'top=[  19, 37, 16, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20, 5, 57, 25, 35, 61, 23]' \
#  4x1_full_wall_lines.scad
#

#######
# 5x1 #
#######

$OPENSCAD -o intermediate/5x1_full_wall_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[ 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]' \
  -D 'back=[ 43, 56, 11,  3, 60, 28, 18, 22, 31,  0, 52, 59, 56]' \
  -D 'right=[ 7,  0, 21]' \
  -D 'left=[ 32, 45, 49]' \
  5x1_full_wall_lines.scad
#  -D 'front=[17,  1, 41, 59, 38,  5, 51, 61, 12,  0, 34, 36, 61]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28, 18, 22, 31, 16, 52, 59, 56]' \
#  -D 'right=[ 7, 48, 21]' \
#  -D 'left=[ 32, 45, 49]' \
#
#$OPENSCAD -o intermediate/5x1_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45, 25, 16, 40, 46, 54, 24, 11]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24,  2, 61,  6, 29, 32, 27, 60]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[ 38, 51, 54]' \
#  5x1_full_wall_lines.scad
#
$OPENSCAD -o intermediate/5x1_full_wall_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[ 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]' \
  -D 'back=[ 34, 26, 38, 42,  0, 51, 23, 32, 44, 14,  2, 41,  6]' \
  -D 'right=[18, 31,  0]' \
  -D 'left=[ 26,  8,  5]' \
  5x1_full_wall_lines.scad
#  -D 'front=[60, 49,  3, 31, 27, 35, 13, 53, 36,  6, 17, 28, 31]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51, 23, 32, 44, 14,  2, 41,  6]' \
#  -D 'right=[18, 31,  0]' \
#  -D 'left=[ 26,  8,  5]' \
#
#$OPENSCAD -o intermediate/5x1_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50, 32,  4, 42]' \
#  -D 'back=[ 12, 55, 42, 52, 20, 11, 36, 32, 22,  9,  0, 55, 46]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[ 31,  9,  8]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10, 38, 32, 58, 33, 45,  0, 44]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7, 39, 41, 19,  4,  5, 37, 51]' \
#  -D 'right=[41, 36, 11]' \
#  -D 'left=[ 32, 27, 37]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43, 45,  0, 44]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38,  5, 37, 51]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43, 45,  0, 44]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38,  5, 37, 51]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  -D 'top=[  19, 37, 12, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20, 5, 57, 25, 35, 61, 23, 30, 22, 6, 25, 2, 40, 23, 12, 38, 33, 23, 28]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24, 63, 55,  7, 30, 61,  7, 13, 40]' \
#  -D 'back=[ 37, 13,  1, 35, 27, 58, 40, 53, 30, 36, 38, 31,  9, 45]' \
#  -D 'right=[17, 51, 25]' \
#  -D 'left=[ 59, 23, 24]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10, 56,  4,  9,  7, 31, 53, 23, 56]' \
#  -D 'back=[ 50, 54, 62,  5, 52,  0, 39, 59, 41, 44, 22,  3,  6, 59]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[ 19, 43,  0]' \
#  5x1_full_wall_lines.scad
#
$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[ 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]' \
  -D 'back=[ 19,  9, 33,  8, 55, 12,  0,  0, 21, 51, 10, 39, 18, 53]' \
  -D 'right=[30, 31, 27]' \
  -D 'left=[  5, 47, 54]' \
  5x1_full_wall_lines.scad
#  -D 'front=[42, 28, 58, 29,  2, 57, 50, 22, 39,  1, 24, 55, 43, 32]' \
#  -D 'back=[ 19,  9, 33,  8, 55, 12,  0, 45, 21, 51, 10, 39, 18, 53]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[  5, 47, 54]' \
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25,  2, 29, 11, 34, 61, 12, 52, 58,  8]' \
#  -D 'back=[ 59, 24,  0, 27, 14,  5, 54, 45, 56,  1, 37, 32, 19, 18]' \
#  -D 'right=[59, 22, 52]' \
#  -D 'left=[ 30, 19, 12]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21,  0, 50,  7, 36]' \
#  -D 'back=[ 57, 60, 51, 35, 34, 33,  3, 28, 25, 31, 12, 21, 57, 31]' \
#  -D 'right=[17, 26, 39]' \
#  -D 'left=[ 24, 55, 29]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6, 24, 55, 26]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12, 27, 53,  6]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[  3, 52, 60]' \
#  5x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/5x1_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6, 24, 55, 26]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12, 27, 53,  6]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  -D 'top=[  19, 37, 16, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20, 5, 57, 25, 35, 61, 23, 30, 22, 6, 25, 2, 40, 23, 12, 38, 33, 23, 28]' \
#  5x1_full_wall_lines.scad

#######
# 6x1 #
#######

#$OPENSCAD -o intermediate/6x1_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[17,  1, 41, 59, 38,  5, 51, 61, 12,  0, 34, 36, 61, 52, 46]' \
#  -D 'back=[ 43, 56, 11,  3, 60, 28, 18, 22, 31, 16, 52, 59, 56, 40, 22]' \
#  -D 'right=[ 7, 48, 21]' \
#  -D 'left=[ 32, 45, 49]' \
#  6x1_full_wall_lines.scad
#
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[21, 19, 54, 11, 26, 45, 25, 16, 40, 46, 54, 24, 11, 53, 61]' \
#  -D 'back=[  1, 20, 10,  4, 63, 24,  2, 61,  6, 29, 32, 27, 60, 50, 27]' \
#  -D 'right=[46, 17, 14]' \
#  -D 'left=[ 38, 51, 54]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[60, 49,  3, 31, 27, 35, 13, 53, 36,  6, 17, 28, 31, 56, 57]' \
#  -D 'back=[ 34, 26, 38, 42, 17, 51, 23, 32, 44, 14,  2, 41,  6, 28, 43]' \
#  -D 'right=[18, 31,  0]' \
#  -D 'left=[ 26,  8,  5]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50, 32,  4, 42, 20, 35]' \
#  -D 'back=[ 12, 55, 42, 52, 20, 11, 36, 32, 22,  9,  0, 55, 46,  5, 61]' \
#  -D 'right=[26, 18, 40]' \
#  -D 'left=[ 31,  9,  8]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[53, 63,  6, 62, 40, 10, 38, 32, 58, 33, 45,  0, 44, 57, 51]' \
#  -D 'back=[  1, 29, 46, 49,  8,  7, 39, 41, 19,  4,  5, 37, 51,  7,  1]' \
#  -D 'right=[41, 36, 11]' \
#  -D 'left=[ 32, 27, 37]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43, 45,  0, 44, 61, 7]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38,  5, 37, 51, 53, 34]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
#  -D 'front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 43, 45,  0, 44, 61, 7]' \
#  -D 'back=[ 17, 58, 30, 23,  6, 18, 50, 61, 53, 38,  5, 37, 51, 53, 34]' \
#  -D 'right=[37,  1, 36]' \
#  -D 'left=[ 24, 19, 29]' \
#  -D 'top=[19, 37, 12, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20,  5, 57, 25, 35, 61, 23, 30, 22,  6, 25,  2, 40, 23, 12, 38, 33, 23, 28, 33, 28, 50]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_1.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[14, 48, 44, 62, 34, 24, 63, 55,  7, 30, 61,  7, 13, 40, 42, 26]' \
#  -D 'back=[ 37, 13,  1, 35, 27, 58, 40, 53, 30, 36, 38, 31,  9, 45, 12, 49]' \
#  -D 'right=[17, 51, 25]' \
#  -D 'left=[ 59, 23, 24]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_2.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[30, 32, 33, 37, 43, 10, 56,  4,  9,  7, 31, 53, 23, 56, 32, 14]' \
#  -D 'back=[ 50, 54, 62,  5, 52,  0, 39, 59, 41, 44, 22,  3,  6, 59, 61, 41]' \
#  -D 'right=[28, 62, 36]' \
#  -D 'left=[ 19, 43,  0]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_3.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[42, 28, 58, 29,  2, 57, 50, 22, 39,  1, 24, 55, 43, 32, 10, 13]' \
#  -D 'back=[ 19,  9, 33,  8, 55, 12,  0, 45, 21, 51, 10, 39, 18, 53,  6, 57]' \
#  -D 'right=[30, 31, 27]' \
#  -D 'left=[  5, 47, 54]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_4.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[28, 16, 52,  4, 25,  2, 29, 11, 34, 61, 12, 52, 58,  8,  4, 25]' \
#  -D 'back=[ 59, 24,  0, 27, 14,  5, 54, 45, 56,  1, 37, 32, 19, 18, 12, 17]' \
#  -D 'right=[59, 22, 52]' \
#  -D 'left=[ 30, 19, 12]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_5.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21,  0, 50,  7, 36, 61, 35]' \
#  -D 'back=[ 57, 60, 51, 35, 34, 33,  3, 28, 25, 31, 12, 21, 57, 31, 27, 4]' \
#  -D 'right=[17, 26, 39]' \
#  -D 'left=[ 24, 55, 29]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_6.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6, 24, 55, 26,  9, 21]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12, 27, 53,  6, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[  3, 52, 60]' \
#  6x1_full_wall_lines.scad
#
#$OPENSCAD -o intermediate/6x1_staggered_full_wall_line_top.stl \
#  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
#  -D 'front=[27,  8,  3, 56, 44, 59, 39, 63, 18, 31,  6, 24, 55, 26,  9, 21]' \
#  -D 'back=[  1, 26, 13, 39, 31, 22,  4,  1, 58, 24, 12, 27, 53,  6, 59, 56]' \
#  -D 'right=[40, 58, 50]' \
#  -D 'left=[3, 52, 60]' \
#  -D 'top=[19, 37, 12, 58, 28, 63,  1, 13, 46, 18, 26,  2,  4, 33, 28, 50, 14, 59, 21, 31, 38,  0, 24, 17, 20,  5, 57, 25, 35, 61, 23, 30, 22,  6, 25,  2, 40, 23, 12, 38, 33, 23, 28, 33, 28, 50]' \
#  6x1_full_wall_lines.scad
#
