<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hasarfréttir</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	<%
	import json
	with open("gengi.json","r",encoding="utf-8") as skra:
		gengi = json.load(skra)
	end
	%>
	% include("haus.tpl")
	<div class="row">
		<section>
			<h1>Gengi gjaldmiðla</h1>
			<ul>
				% for i in gengi["results"]:
					<li>{{i["longName"]}} - {{i["shortName"]}} ISK: {{i["value"]}}</li>
				% end
			</ul>
		</section>
	</div>
	% include("footer.tpl")
</body>
</html>