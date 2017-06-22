<?php
	include_once '../includes/db_connect.php';

	$q = $_GET['q'];

	$stmt = $conn->prepare("SELECT * FROM honey__products WHERE type LIKE '%$q%' ORDER BY name ASC");
	$stmt->execute();
	$stmt->bind_result($name, $type);

	echo "<table>
		<thead>
			<tr>
				<th>Products</th>
				<th>Type</th>
			</tr>
		</thead>
		<tbody>";
			while ($stmt->fetch()) {
				echo "<tr>";
					echo "<td style='padding-right: 20px'>" . $name . "</td>";
					echo "<td>" . $type . "</td>";
				echo "</tr>";
			}
		echo "</tbody>
	</table>";

	$stmt->close();

	mysqli_close($conn);
?>