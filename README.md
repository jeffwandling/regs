# WDFW Regs

WARNING:

USE THE OFFICIAL WDFW REGULATIONS.  THEY ARE OFFICIAL.

THESE FILES ARE NOT OFFICIAL.

DO NOT BASE YOUR DECISIONS OF WHAT WATERS ARE OPEN FOR FISHING FROM
THE FILES CONTAINED HEREIN.

BY USING THESE FILES, YOU AGREE TO ABIDE BY THE REGULATIONS AS DEFINED
BY THE OFFICIAL STATE RULES.  

THESE ARE NOT THOSE RULES!

[OFFICIAL REGULATIONS](https://wdfw.wa.gov/fishing/regulations)


# Audience

The intended audience of this are those who are interested in building
automated systems/software to narrow the search for WHERE to fish and WHEN
to fish.

Their use is up to you.

I may decide to integrate them into a general purpose search tool to **narrow the field**
of where waters are open to fishing for any given set of search criteria.

I have not done that yet, and I don't know yet if I will.  But the data itself is key
to the problem. Getting the raw data into a normalized form is part of the solution.

Here is the normalized data, (or one way to normalize it...)

# Now the data

In this repository are files.

raw - the raw Excel files from the WDFW (See WARNING above!)

cooked - the version of the file(s) saved as CSV ( Comma Separated Value ). You do this yourself.

xml - the version that the softare here creates:

```
perl tools/parse.pl < cooked/file.csv > xml/file.xml

```



