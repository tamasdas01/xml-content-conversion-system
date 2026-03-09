import os
import subprocess
import sys

# Ensure lxml is installed
try:
    import lxml.etree as ET
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip", "install", "lxml"])
    import lxml.etree as ET

os.makedirs('output', exist_ok=True)

def transform(xml_path, xslt_path, output_path):
    print(f"Transforming {xml_path} with {xslt_path} -> {output_path}")
    dom = ET.parse(xml_path)
    xslt = ET.parse(xslt_path)
    transform = ET.XSLT(xslt)
    newdom = transform(dom)
    with open(output_path, 'wb') as f:
        f.write(ET.tostring(newdom, pretty_print=True))
    print("Done.")

# Questions -> HTML
transform('xml/question_bank.xml', 'xslt/questions_to_html.xsl', 'output/questions_output.html')

# Article -> HTML
transform('xml/article.xml', 'xslt/article_to_html.xsl', 'output/article_output.html')

# Summary -> HTML
transform('xml/question_bank.xml', 'xslt/xml_to_summary.xsl', 'output/summary_output.html')

print("All outputs generated successfully!")
