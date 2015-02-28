<%inherit file="html.mako" />
<head>
<title>Table Football Ladder 3.0</title>
</head>
<body>
<p>Ladder has ${len(ladder.games)} games</p>
${sorted([p for p in ladder.players.values()], key=lambda x: x.elo, reverse=True)}<br />
</body>
