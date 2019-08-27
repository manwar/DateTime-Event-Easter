#
#     Configuration script for DateTime::Event::Easter
#     Copyright © 2003-2004, 2015, 2019 Rick Measham and Jean Forget, all rights reserved
#
#     This program is distributed under the same terms as Perl 5.16.3:
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

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'DateTime::Event::Easter',
    VERSION_FROM => 'lib/DateTime/Event/Easter.pm', # finds $VERSION
    AUTHOR       => [ 'Rick Measham (rickm@cpan.org)', 'Jean Forget <JFORGET@cpan.org>' ],
    ABSTRACT     => 'Returns Easter events for DateTime objects',
    PREREQ_PM => {
                    'DateTime'         => 0.16,
                    'DateTime::Set'    => 0.08,
                    'Carp'             => 0,
                    'Params::Validate' => 0,
                    'DateTime::Calendar::Julian' => 0,
                 },
    'LICENSE'           => 'perl',
    'MIN_PERL_VERSION' => '5.6.1',
);
