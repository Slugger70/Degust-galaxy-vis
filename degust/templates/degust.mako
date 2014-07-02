<%
import os
import sys
import argparse

sys.path.append( os.path.join(os.path.abspath(os.path.curdir), "config/plugins/visualizations/degust/templates/") )
from degust import degust
from degust import arguments

parser = arguments()
args_string = '--notour NOTOUR --tab --cuffdiff %s' % hda.file_name
args = parser.parse_args( args_string.split() )
html = degust( args )

%>
${html}
