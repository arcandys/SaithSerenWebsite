<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="homepage.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://emoji-css.afeld.me/emoji.css" rel="stylesheet">
    <title>Calendar</title>
    <link rel="stylesheet" type="text/css" href="calendar.css">
</head>
<body>
<section class="header">
        <div class="blur">
            <div class="bar">
                <header class="navbar">
                    <nav>
                        <div class="menu_nav">
                            <ul>
                                <li><a href="#"><img src="img/SaithSerenLogo-removebg-preview.png" width="50" height="27"></a></li>
                                <li><a href="#">Home</a></li>
                                <li><a href="aboutus.html">About Us</a></li>
                                <li><a href="PicturesPage.html">Pictures</a></li>
                                <li><a href="">Calendar</a></li>
                                <li><a href="membership.html">Become a Member</a></li>
                                <li><a href="#"><i class="em em-gb" aria-role="presentation" aria-label="United Kingdom Flag"></i></a></li>
                                <li><a href="w_homepage.html"><i class="em em-flag-wales" aria-role="presentation" aria-label="Wales Flag"></i></a></li>
                            </ul>
                        </div>
                    </nav>
                </header>
            </div>
    <section class="calendar">
        <h1> Calendar </h1>
        <table>
        <thead>
            <tr>
                <th>Sunday</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
            </tr>
        </thead>
        <tbody id="calendar-body">
            <?php 
                include 'scriptcalendar.php'; 
            ?>
        </tbody>
    </table>
    </section> 
    <section class="membership">
        <div class="askmember">
           <p>Become a member NOW!</p>
        </div>

        <a href="membership.html"><button class="boutMem">Learn More</button></a>


    </section>

    <section class="footer">
        <div class="lefttext">
            <p>Y Saith Seren<br>
            Canolfan Gymraeg Wrecsam<br>
            18 Chester Street<br>
            Wrecsam LL13 8BG<br>
            Tel: 01978 447006</p>
        </div>

        <div class="righttext">
            <p>Follow us on Facebook!<br>
            Contact us by Mail:<br>
            7seren@gmail.com<br>
            Or use our contact form!<br>
            lien</p>
        </div>
    </div>
</body>
</html>