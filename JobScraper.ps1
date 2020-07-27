$URL = 'https://www.indeed.com/jobs?q=junior%20web%20developer&l=San%20Diego%2C%20CA'
$SITE = Invoke-WebRequest $URL

($SITE.ParsedHtml.body.getElementsByClassName('title')| Where {
    $_.ClassName -eq ‘title’
}).InnerText

($SITE.ParsedHtml.body.getElementsByClassName('summary')| Where {
    $_.ClassName -eq ‘summary’
}).InnerText