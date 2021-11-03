#!/usr/bin/perl

use Text::ParseWords;

my $printed = 0;

$x = <STDIN>;
print "<regulations>\n";

while ($x = <STDIN> )
{
   chomp $x;

   if ($x =~ /[a-z]/)
   {
       ($spec, $dates, $rule, $ramp) =  quotewords(",",0, $x);
       next unless ($spec);
       print "\t", "<rule>\n",
             "\t", "     <species>$spec</species>\n",
             "\t", "     <date>$dates</date>\n",
             "\t", "     <detail>$rule</detail>\n",
             "\t", "</rule>\n";
   }
   else
   {
     if ($x =~ /^([A-Z\-.\s]+),/) {
      $x =~ /^(.*)\s+\-\s+(.*)\s+CO./;
      $body = $1;
      $county = $2;
      if ($printed) {
           print "</body>\n";
           $printed = 0;
      }
      print "<waterbody\n",
            "    county = \"$county\"\n",
            "    name = \"$body\">\n";
      $printed = 1;
     }
  }
}

if ($printed) {
     print "</waterbody>\n";
     $printed = 0;
}

print "</regulations>\n";
