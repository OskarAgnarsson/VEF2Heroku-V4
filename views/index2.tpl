<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hasarfréttir</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	% include("haus.tpl")
	<div class="row">
		<section>
			<h1>Gengi gjaldmiðla frá apis.is</h1>
			<ul>
				% for i in data["results"]:
					<li>{{i["longName"]}} - {{i["shortName"]}} ISK: {{i["value"]}}</li>
				% end
			</ul>
		</section>
	</div>
	% include("footer.tpl")
</body>
</html>