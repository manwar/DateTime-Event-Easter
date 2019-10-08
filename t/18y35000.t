# -*- encoding: utf-8; indent-tabs-mode: nil -*-
#
#     Test script for DateTime::Event::Easter
#     Copyright © 2019 Rick Measham and Jean Forget, all rights reserved
#
#     This program is distributed under the same terms as Perl:
#     GNU Public License version 1 or later and Perl Artistic License
#
#     You can find the text of the licenses in the F<LICENSE> file or at
#     L<https://dev.perl.org/licenses/artistic.html>
#     and L<https://www.gnu.org/licenses/gpl-1.0.html>.
#
#     Here is the summary of GPL:
#
#     This program is free software; you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation; either version 1, or (at your option)
#     any later version.
#
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this program; if not, write to the Free Software Foundation,
#     Inc., <https://www.fsf.org/>.
#
# This test uses Eugene van der Pijll's data and remarks from
# https://www.nntp.perl.org/group/perl.datetime/2003/03/msg1437.html
#

use strict;
use warnings;
use Test::More;

use DateTime::Event::Easter;

my @liste1 = qw/
       34998-01-07
       34998-12-23
       34999-12-15
       35001-01-04
       35001-12-20
       /;
my @liste2 = qw/
       59996-06-16
       59997-07-06
       59998-06-28
       59999-06-13
       60000-07-02
       60001-06-24
       /;
plan(tests => @liste1 + @liste2);


my $paques = DateTime::Event::Easter->new(easter => 'eastern');
my $debut  = DateTime->new(year => 34998, month => 1, day => 1);
my $fin    = DateTime->new(year => 35002, month => 1, day => 1);
my @liste  = $paques->as_list(from => $debut, to => $fin);

my $i = 0;
for my $dt (@liste) {
  is ($dt->ymd, $liste1[$i], "Easter on $liste1[$i]");
  ++$i;
}

$debut  = DateTime->new(year => 59996, month => 1, day => 1);
$fin    = DateTime->new(year => 60002, month => 1, day => 1);
@liste = $paques->as_list(from => $debut, to => $fin);

$i = 0;
for my $dt (@liste) {
  is ($dt->ymd, $liste2[$i], "Easter on $liste2[$i]");
  ++$i;
}
