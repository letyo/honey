<?php
	include_once "includes/db_connect.php";

//az összes hozzávalót az ingredients táblázatból lementi egy array-ba, az array-t így lehet hívni: array[x]['vmi'], ahol array, az array neve, x az adott sornak a száma, vmi pedig az oszlop neve
	$query = "SELECT * FROM " . TABLE_NAME_HONEY__INGREDIENTS . " ORDER BY id ASC";
	$ingredients = array();
	$result = mysqli_query($conn, $query)  or die ("Error querying database.");
	while ($row = mysqli_fetch_array($result)) {
		$ingredients[] = $row;
	}


	$stmt = $conn->prepare("SELECT * FROM " . TABLE_NAME_HONEY__RECIPES . " ORDER BY id ASC");
	$stmt->execute();
	$stmt->bind_result($id, $name, $directions, $image);

	while ($stmt->fetch()) {
?>
        <h2 class="toggle"><?php echo $name; ?></h2>

        <div class="toggle-content">
        	<table>
        	<tr>
        		<td style="width: 400px">
        			<img src="<?php echo 'img/recipes/' . $image . '.jpg'; ?>" style="margin-top: 0px"/>
        		</td>
        		<td>
        			<p style="font-weight: bold">Ingredients</p>
        			<ul>
<?php
        				for ($i = 2; $i < 31; $i++) {
        					if (!empty($ingredients[$id][$i])) {
    							?><li><?php echo $ingredients[$id][$i]; ?></li><?php
        					}
    					}
?>
    				</ul>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<p style="font-weight: bold">Directions</p>
					<p><?php echo $directions; ?></p>
				</td>
			</tr>
        	</table>
        </div>
<?php
    }

    $stmt->close();

?>

<script src="js/jQuery.js"></script>
<script src="js/main.js"></script>		


<?php
	mysqli_close($conn);
?>