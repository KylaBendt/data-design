<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Conceptual Model - Kyla's Data Design Project</title>
</head>
<body>
	<h1>Kyla's Data Design Project - Conceptual Model</h1>
	<nav>
		<a href="index.php"><button>Index</button></a>
		<a href="persona.php"><button>Persona</button></a>
		<a href="user-story.php"><button>User Story</button></a>
		<a href="use-case.php"><button>Use Case/Interaction Flow</button></a>
		<a href="conceptual-model.php"><button>Conceptual Model</button></a>
	</nav>

<h2>Entities & Attributes</h2>

<h3>User</h3>
<ul>
	<li>userId (PK)</li>
	<li>userActivationToken (Account verification)</li>
	<li>userName</li>
	<li>userEmail</li>
	<li>userHash (Password)</li>
</ul>

<h3>Route</h3>
<ul>
	<li>routeId (PK)</li>
	<li>routeUserId (FK)</li>
	<li>routeName</li>
	<li>routeDetails</li>
	<li>routeDateTime</li>
	<li>routeDuration</li>
	<li>routeCoordinates</li>
</ul>

<h2>Relations</h2>
	<ul>
		<li>One <strong>User</strong> can have multiple <strong>Routes</strong></li>
	</ul>

<h2>Entity Relationship Diagram</h2>
	<img src="images/erd.jpg" alt="ERD">

</body>

</html>