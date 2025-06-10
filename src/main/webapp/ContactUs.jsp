<%@ page language="java" contentType="text/html; charset=UTF-8" 
      pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html lang="en"> 

<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Contact Us | MotoBay</title>
    <link rel="stylesheet" href="css/ContactUs.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
</head> 

<body> 
    <div class="contact-container"> 
        <div class="contact-header"> 
            <h1>Contact Us</h1> 
            <p class="tagline">"Have questions or need assistance? We're here to help you find the right part, every time. Reach out and 
                let's keep your vehicle running smoothly."</p> 
            <p class="image-credit">Image from Freepik</p> 
        </div> 

        <div class="contact-methods"> 
            <div class="contact-box teal"> 
                <div class="icon"> 
                    <i class="fas fa-phone-alt"></i> 
                </div> 
                <div class="contact-info"> 
                    <h3>CALL TODAY</h3> 
                    <p>+94 11 754 4801</p> 
                </div> 
            </div> 

            <div class="contact-box orange"> 
                <div class="icon"> 
                    <i class="fas fa-comment-dots"></i> 
                </div> 
                <div class="contact-info"> 
                    <h3>Message Us</h3> 
                    <p>+94 70 344 3525</p> 
                </div> 
            </div> 

            <div class="contact-box red"> 
                <div class="icon"> 
                    <i class="fas fa-envelope"></i> 
                </div> 
                <div class="contact-info"> 
                    <h3>EMAIL US</h3> 
                    <p>info@motobay.com</p> 
                </div> 
            </div> 
        </div> 

        <div class="contact-form-section">
            <div class="form-container">
                <h2>Send Us a Message</h2>
                <form action="#" method="post">
                    <div class="form-group">
                        <input type="text" id="name" name="name" placeholder="Your Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" id="email" name="email" placeholder="Your Email" required>
                    </div>
                    <div class="form-group">
                        <input type="text" id="subject" name="subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <textarea id="message" name="message" placeholder="Your Message" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Send Message</button>
                </form>
            </div>
        </div>

        <div class="contact-image"></div>
        
        <div class="map-section">
            <h2>Find Us</h2>
            <div class="map-container">
                <!-- Replace with your actual Google Maps embed code -->
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.798467936929!2d79.8600351!3d6.9146775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNsKwNTQnNTIuOCJOIDc5wrA1MSczNi4xIkU!5e0!3m2!1sen!2sus!4v1620000000000!5m2!1sen!2sus" 
                    width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>

    <footer class="contact-footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>MotoBay</h3>
                <p>Your trusted source for quality auto parts.</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Business Hours</h3>
                <p>Monday - Friday: 8:00 AM - 6:00 PM</p>
                <p>Saturday: 9:00 AM - 5:00 PM</p>
                <p>Sunday: Closed</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2023 MotoBay. All rights reserved.</p>
        </div>
    </footer>
</body> 

</html>