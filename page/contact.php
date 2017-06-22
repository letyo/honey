<?php

    include_once "includes/security.php";

    $subject = $comment = $name = $email = $email_err = $emp = $success = "";
    $suc = false;

?>

    <div>
        <p>If you would like to order some of our product, or just have any question, then please contact us, or send us a message in the form below.</p>
        <p><strong>Email:</strong> honey@thebest.com</p>
        <p><strong>Phone:</strong> +36-20/666-66-66</p>
        <p><strong>Address:</strong> Honeytown, Best street 66, Hungary</p>
    </div>

<?php
  
    $admin_email = "hetyey.g@gmail.com";

    if (isset($_POST['subject'])) {
        $subject = check_text($_POST['subject']);
    }
    if (isset($_POST['comment'])) {
        $comment = check_text($_POST['comment']);
    }
    if (isset($_POST['name'])) {
        $name = check_text($_POST['name']);
    }
    if (isset($_POST['email'])) {
        $email = check_email($_POST['email']);
    }

    if (valid_email($email) == false && !empty($email)) {
        $email_err = "Please enter a valid email address!";
    }

    $message = "From: \nname: " . $name . "\nemail: " . $email . "\n\nMessage:\n" . $comment;
    
    if (!empty($subject) && !empty($comment) && !empty($name) && !empty($email) && empty($email_err)) {
        mail($admin_email, $subject, $message, "From: ". $email);
        $success = "Your message has been successfully sent!";
        $suc = true;
    } elseif (empty($subject) || empty($comment) || empty($name) || empty($email)) {
        $emp = "Please fill out all input fields!";
    }

    
    if (isset($_POST['submit'])) {
?>
        <h6><?php echo $success; ?></h6>
        <h6 style="color: red; background-color: black; width: 200px"><?php echo $emp; ?></h6>
        <h6 style="color: red; background-color: black; width: 235px"><?php echo $email_err; ?></h6>
<?php
    }
?>

    <form method="POST" action="contact">
        <div class="left" style="width: 350px">
            <br/>
            <h6>Name:</h6>
            <br/>
            <input type="text" name="name" placeholder="Please writte your name here!" size="35" value="<?php if (isset($name) && $suc == false) {echo $name;} ?>">
            <br/><br/>
            <h6>Email adress:</h6>
            <br/>
            <input type="text" name="email" placeholder="Please writte your email address here!" size="35" value="<?php if (isset($email) && $suc == false) {echo $email;} ?>">
            <br/><br/>
            <h6>Subject:</h6>
            <br/>
            <input type="text" name="subject" placeholder="Please writte the subject here!" size="35" value="<?php if (isset($subject) && $suc == false) {echo $subject;} ?>">
        </div>
        <div class="right" style="float: left">
            <br/>
            <h6>Message:</h6>
            <br/>
            <textarea name="comment" rows="20" cols="40" placeholder="Please writte your message here!"><?php if (isset($comment) && $suc == false) {echo $comment;} ?></textarea>
            <br/><br/>
            <input type="submit" name="submit" value="Send">
        </div>
    </form>