<?php
	include_once "includes/db_connect.php";
?>

<p>If you like our products, you can get information (price, shipping) through our <a href="contact"><strong>contact</strong></a> form.</p>
<p>If you would like to list one kind of our product, please select the type of our product in this list.</p>
	
<div class="left">
	<form>
		<select name="products" onchange="select(this.value)">
	        <option value="">All of our products</option>
	        <option value="honey">Honey</option>
	        <option value="jam">Jam</option>
	        <option value="other">Others</option>
	    </select>
	</form>

	<br/>

	<div id="products">

<?php

			$stmt = $conn->prepare("SELECT * FROM honey__products ORDER BY name ASC");
			$stmt->execute();
			$stmt->bind_result($name, $type);

?>

		<table>
			<thead>
				<tr>
					<th>Products</th>
					<th>Type</th>
				</tr>
			</thead>
			<tbody>
<?php
				while ($stmt->fetch()) {
?>
					<tr>
						<td style="padding-right: 20px"><?php echo $name; ?></td>
						<td><?php echo $type; ?></td>
					</tr>
<?php
				}
?>
			</tbody>
		</table>

	</div>
</div>

<div class="right">
    <img src="img/products.jpg"/>
</div>

<script src="js/products.js"></script>

<?php
	mysqli_close($conn);
?>