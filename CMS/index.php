<?php
include 'index-template/header.php';
?>
<!-- login error messages -->
<div class="container">
    <?php
    if (isset($_SESSION['message'])) {
        ?>
        <div class="alert alert-danger">
            <strong><?=$_SESSION['message']?></strong>
        </div>
    <?php
    }
    ?>
</div>

<!-- this will be the default display for coverpage, else will be replaced what's been updated in CMS -->
<div class="container-fluid d-flex justify-content-center py-5 bg-info">
    <!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

<!-- Indicators/dots -->
<div class="carousel-indicators">
  <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
  <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
  <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
</div>

<?php
// SQL query to fetch data from tbl_background where Value is 0
$sql = "SELECT * FROM tbl_background WHERE Value = 0";

// Execute the query
$result = $conn->query($sql);
?>

<!-- The slideshow/carousel -->
<div class="carousel-inner">
    <?php
    // Check if there is data available
    if ($result->num_rows > 0) {
        // Loop through each row of data
        $active = true; // Flag to mark the first item as active
        while ($row = $result->fetch_assoc()) {
            ?>
            <div class="carousel-item <?php echo $active ? 'active' : ''; ?>">
                <img src="./uploads/<?php echo $row['Bg']; ?>" class="d-block" style="width:100%">
            </div>
            <?php
            // After the first iteration, set the active flag to false
            $active = false;
        }
    } else {
        // If there are no rows in the result, display a default item
        ?>
        <div class="carousel-item active">
            <img src="assets/default-image.jpg" alt="Default Image" class="d-block" style="width:100%">
        </div>
        <?php
    }
    ?>
</div>


<!-- Left and right controls/icons -->
<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
  <span class="carousel-control-prev-icon"></span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
  <span class="carousel-control-next-icon"></span>
</button>
</div>

</div>

<?php

// SQL query to fetch data from tbl_card_image
$sql = "SELECT Image, Title, Caption FROM tbl_card_images";

// Execute the query
$result = $conn->query($sql);
?>

<div class="container-fluid d-flex justify-content-center py-5 bg-success">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <?php
        // Check if there is data available
        if ($result->num_rows > 0) {
            // Loop through each row of data
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="col">
                    <div class="card h-100">
                        <img src= ./uploads/<?php echo $row['Image']; ?> class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row['Title']; ?></h5>
                            <p class="card-text"><?php echo $row['Caption']; ?></p>
                        </div>
                    </div>
                </div>
                <?php
            }
        } else {
            // If no data is available, display a message or handle it accordingly
            echo "<p>No card data available.</p>";
        }
        ?>
    </div>
</div>


<!-- this will be the default display for grid content, else will be replaced what's been updated in CMS -->
<?php

// SQL query to fetch data from tbl_card_image
$sql = "SELECT * FROM tbl_cardcontent";

// Execute the query
$result = $conn->query($sql);
?>

<div class="container-fluid d-flex justify-content-center py-5 bg-warning">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <?php
        // Check if there is data available
        if ($result->num_rows > 0) {
            // Loop through each row of data
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="col mb-4">
                    <div class="card h-100" style="background-color: <?php echo $row['Color']; ?>">
                        <div class="card-body">
                            <h5 class="card-title"style="font-size: <?php echo $row['Size']; ?>px;"><?php echo $row['Title']; ?></h5>
                            <p class="card-text"style="font-size: <?php echo $row['Size']; ?>px;"><?php echo $row['Caption']; ?></p>
                        </div>
                    </div>
                </div>

                <?php
            }
        } else {
            // Display a message if there are no rows in the result
            echo "<div class='col'><p>No data available</p></div>";
        }
        ?>
    </div>
</div>

        
        
    </div>
</div>



<?php
session_unset();
include 'index-template/footer.php';
?>