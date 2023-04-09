<?php
    //open connection to mysql db
    $connection = mysqli_connect("localhost","u1953438_science","Qwerty_1953438","u1953438_science_art_db") or die("Error " . mysqli_error($connection));

    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $patronymic = $_POST["patronymic"];
    $age_category = $_POST["age_category"];
    $job = $_POST["job"];
    $email = $_POST["email"];
    $section = $_POST["section"];
    $phone_number = $_POST["phone_number"];
    $leadership = $_POST["leadership"];
    $insert_date = $_POST["insert_date"];
    $description = $_POST["description"];
    $update_date = $_POST["update_date"];
    $filename = $_POST["filename"];

    $name = mysqli_real_escape_string($connection, $name);
    $surname = mysqli_real_escape_string($connection, $surname);
    $patronymic = mysqli_real_escape_string($connection, $patronymic);
    $age_category = mysqli_real_escape_string($connection, $age_category);
    $job = mysqli_real_escape_string($connection, $job);
    $email = mysqli_real_escape_string($connection, $email);
    $section = mysqli_real_escape_string($connection, $section);
    $phone_number = mysqli_real_escape_string($connection, $phone_number);
    $leadership = mysqli_real_escape_string($connection, $leadership);
    $insert_date = mysqli_real_escape_string($connection, $insert_date);
    $description = mysqli_real_escape_string($connection, $description);
    $update_date = mysqli_real_escape_string($connection, $update_date);
    $filename = mysqli_real_escape_string($connection, $filename);

    $sql = "INSERT INTO candidate SET name = '$name', surname = '$surname', patronymic = '$patronymic', age_category = '$age_category', job = '$job', email = '$email', section = '$section', phone_number = '$phone_number', leadership = '$leadership', insert_date = '$insert_date', description = '$description', update_date = '$update_date', filename = '$filename'";
    $result = mysqli_query($connection, $sql);

    if ($result) {
        echo json_encode(200);
    } else {
        echo json_encode($result);
    }

    //close the db connection
    mysqli_close($connection);
?>
