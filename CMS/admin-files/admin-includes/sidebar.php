 <!-- Side navigation -->
 <div class="sidenav text-center">
        <a class="" href="#">
        <?php
    include_once "../config/dbcon.php";
    $sql = "SELECT * FROM `tbl_logo` WHERE `logoid` = 1"; 
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Fetch the logo data
        $row = $result->fetch_assoc();
    ?>
        <a class="" href="#">
            <img src="../uploads/<?php echo $row["Logo"]; ?>" alt="" width="60" height="60">
        </a>
       
    <?php
    }   
    
    ?>


        </a>
        <hr class="hr-custom">
        <a href="users_mgt.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Users Management"><i class="fa-solid fa-users"></i></a>
        <a href="cms.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Content Management"><i class="fas fa-grip-horizontal text-primary"></i></a>
        <a href="enrollmentSystem.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Digital Enrollment"><i class="fa-solid fa-file text-success"></i></a>
        <a href="class.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Classroom"><i class="fas fa-chalkboard-teacher text-info"></i></a>
        <a href="inbox.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Inbox"><i class="fa-solid fa-envelope text-warning"></i></a>
        
        <!-- <a class="bottom-icon" href="../index.php" data-bs-toggle="tooltip" data-bs-placement="right" title="Logout"><i class="fa-solid fa-right-from-bracket text-danger"></i></a> -->

        <button class="btn bottom-icon" data-bs-toggle="modal" data-bs-target="#logoutModal">
            <i class="fa-solid fa-right-from-bracket text-danger" data-bs-toggle="tooltip" data-bs-placement="right" title="Logout"></i>
        </button>
    </div>