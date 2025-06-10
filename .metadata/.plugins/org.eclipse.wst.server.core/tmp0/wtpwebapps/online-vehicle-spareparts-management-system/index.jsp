<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Motor Bay - Vehicle Spare Parts Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #097396;
            --secondary-color: #0a8bb5;
            --accent-color: #ff6b35;
            --light-color: #f8f9fa;
            --dark-color: #212529;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f5f5;
            color: var(--dark-color);
            line-height: 1.6;
        }

        /* Header & Navigation */
        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 50px;
            margin-right: 10px;
        }

        .logo h1 {
            color: var(--primary-color);
            font-size: 1.8rem;
            font-weight: 700;
        }

        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 30px;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        .login-dropdown {
            position: relative;
            display: inline-block;
        }

        .login-btn {
            background-color: var(--primary-color);
            color: white;
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-btn:hover {
            background-color: var(--secondary-color);
        }

        .dropdown-content {
            display: none;
            position: absolute;
            right: 0;
            background-color: white;
            min-width: 160px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 5px;
            overflow: hidden;
        }

        .dropdown-content a {
            color: var(--dark-color);
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
            color: var(--primary-color);
        }

        .login-dropdown:hover .dropdown-content {
            display: block;
        }

        .signup-btn {
            background-color: var(--accent-color);
            color: white;
            padding: 8px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .signup-btn:hover {
            background-color: #e55a2b;
        }

        .mobile-menu {
            display: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
            margin-top: 80px;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .hero h2 {
            font-size: 3rem;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 30px;
            background-color: var(--accent-color);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn:hover {
            background-color: #e55a2b;
            transform: translateY(-3px);
        }

        /* Featured Products */
        .featured {
            padding: 80px 0;
            background-color: white;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .section-title p {
            color: #6c757d;
            max-width: 700px;
            margin: 0 auto;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .product-img {
            height: 200px;
            overflow: hidden;
        }

        .product-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .product-card:hover .product-img img {
            transform: scale(1.1);
        }

        .product-info {
            padding: 20px;
        }

        .product-info h3 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: var(--dark-color);
        }

        .product-info p {
            color: #6c757d;
            margin-bottom: 15px;
        }

        .price {
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--primary-color);
        }

        .add-to-cart {
            display: block;
            text-align: center;
            background-color: var(--primary-color);
            color: white;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 15px;
            transition: background-color 0.3s;
        }

        .add-to-cart:hover {
            background-color: var(--secondary-color);
        }

        /* Services Section */
        .services {
            padding: 80px 0;
            background-color: #f8f9fa;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .service-card {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: transform 0.3s;
        }

        .service-card:hover {
            transform: translateY(-10px);
        }

        .service-icon {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .service-card h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: var(--dark-color);
        }

        .service-card p {
            color: #6c757d;
        }

        /* About Section */
        .about {
            padding: 80px 0;
            background-color: white;
        }

        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: center;
        }

        .about-img {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .about-img img {
            width: 100%;
            height: auto;
            display: block;
        }

        .about-text h2 {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .about-text p {
            margin-bottom: 20px;
            color: #6c757d;
        }

        .about-features {
            margin-top: 30px;
        }

        .feature {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .feature i {
            color: var(--primary-color);
            font-size: 1.2rem;
            margin-right: 10px;
        }

        /* Footer */
        footer {
            background-color: var(--dark-color);
            color: white;
            padding: 60px 0 20px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }

        .footer-column h3 {
            font-size: 1.3rem;
            margin-bottom: 20px;
            color: white;
        }

        .footer-column p {
            margin-bottom: 15px;
            color: #adb5bd;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            color: #adb5bd;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: white;
        }

        .social-links {
            display: flex;
            gap: 15px;
        }

        .social-links a {
            display: inline-block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            transition: background-color 0.3s;
        }

        .social-links a:hover {
            background-color: var(--primary-color);
        }

        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #adb5bd;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .about-content {
                grid-template-columns: 1fr;
            }

            .about-img {
                order: -1;
            }
        }

        @media (max-width: 768px) {

            .nav-links,
            .auth-buttons {
                display: none;
            }

            .mobile-menu {
                display: block;
            }

            .hero h2 {
                font-size: 2.5rem;
            }

            .section-title h2 {
                font-size: 2rem;
            }
        }
    </style>
</head>

<body>
    <!-- Header & Navigation -->
    <header>
        <div class="container">
            <nav>
                <div class="logo">
                    <img src="Assets/Logo.jpg" alt="Motor Bay Logo">
                    <h1>Motor Bay</h1>
                </div>
                <ul class="nav-links">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <div class="auth-buttons">
                    <div class="login-dropdown">
                        <div class="login-btn">Login <i class="fas fa-chevron-down"></i></div>
                        <div class="dropdown-content">
                            <a href="#"><i class="fas fa-user"></i> User Login</a>
                            <a href="#"><i class="fas fa-truck"></i> Supplier Login</a>
                            <a href="#"><i class="fas fa-tasks"></i> Manager Login</a>
                            <a href="#"><i class="fas fa-user-shield"></i> Admin Login</a>
                        </div>
                    </div>
                    <a href="#" class="signup-btn">Sign Up</a>
                </div>
                <div class="mobile-menu">
                    <i class="fas fa-bars"></i>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-content">
            <h2>Quality Spare Parts for Your Vehicle</h2>
            <p>Find the perfect parts for your car, motorcycle, or truck. We offer a wide range of high-quality spare
                parts from trusted brands at competitive prices.</p>
            <a href="#products" class="btn">Shop Now <i class="fas fa-arrow-right"></i></a>
        </div>
    </section>

    <!-- Featured Products -->
    <section class="featured" id="products">
        <div class="container">
            <div class="section-title">
                <h2>Featured Products</h2>
                <p>Discover our most popular vehicle spare parts, trusted by mechanics and car enthusiasts.</p>
            </div>
            <div class="products">
                <div class="product-card">
                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1486262715619-67b85e0b08d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80"
                            alt="Brake System">
                    </div>
                    <div class="product-info">
                        <h3>Premium Brake System</h3>
                        <p>High-performance brake pads and rotors for optimal stopping power.</p>
                        <div class="price">$129.99</div>
                        <a href="#" class="add-to-cart">Add to Cart <i class="fas fa-shopping-cart"></i></a>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80"
                            alt="Engine Oil">
                    </div>
                    <div class="product-info">
                        <h3>Synthetic Engine Oil</h3>
                        <p>Advanced formula for superior engine protection and performance.</p>
                        <div class="price">$49.99</div>
                        <a href="#" class="add-to-cart">Add to Cart <i class="fas fa-shopping-cart"></i></a>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80"
                            alt="Air Filter">
                    </div>
                    <div class="product-info">
                        <h3>Performance Air Filter</h3>
                        <p>Increased airflow for better engine performance and fuel efficiency.</p>
                        <div class="price">$34.99</div>
                        <a href="#" class="add-to-cart">Add to Cart <i class="fas fa-shopping-cart"></i></a>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-img">
                        <img src="https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80"
                            alt="Suspension Kit">
                    </div>
                    <div class="product-info">
                        <h3>Sport Suspension Kit</h3>
                        <p>Enhanced handling and stability for a smoother driving experience.</p>
                        <div class="price">$299.99</div>
                        <a href="#" class="add-to-cart">Add to Cart <i class="fas fa-shopping-cart"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="services">
        <div class="container">
            <div class="section-title">
                <h2>Our Services</h2>
                <p>We offer comprehensive solutions for all your vehicle spare parts needs.</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <h3>Fast Delivery</h3>
                    <p>We ensure quick and reliable delivery of your orders to your doorstep or preferred location.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-tools"></i>
                    </div>
                    <h3>Expert Consultation</h3>
                    <p>Our team of automotive experts is available to help you find the right parts for your vehicle.
                    </p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>Quality Guarantee</h3>
                    <p>All our products come with a quality guarantee to ensure your satisfaction and vehicle safety.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about" id="about">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>About Motor Bay</h2>
                    <p>Motor Bay is a leading online platform for vehicle spare parts management, dedicated to providing
                        high-quality automotive components to individuals, workshops, and businesses.</p>
                    <p>With years of experience in the automotive industry, we understand the importance of reliable
                        parts for vehicle maintenance and performance. Our mission is to make quality spare parts
                        accessible to everyone at competitive prices.</p>
                    <div class="about-features">
                        <div class="feature">
                            <i class="fas fa-check-circle"></i>
                            <span>Wide range of genuine and OEM parts</span>
                        </div>
                        <div class="feature">
                            <i class="fas fa-check-circle"></i>
                            <span>Competitive pricing and regular discounts</span>
                        </div>
                        <div class="feature">
                            <i class="fas fa-check-circle"></i>
                            <span>Expert technical support and advice</span>
                        </div>
                        <div class="feature">
                            <i class="fas fa-check-circle"></i>
                            <span>Secure and convenient online shopping</span>
                        </div>
                    </div>
                </div>
                <div class="about-img">
                    <img src="https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80"
                        alt="Motor Bay Workshop">
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact">
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Motor Bay</h3>
                    <p>Your trusted partner for quality vehicle spare parts. We provide genuine components for all major
                        vehicle brands.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#products">Products</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Contact Us</h3>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Automotive Street, Vehicle City</p>
                    <p><i class="fas fa-phone"></i> +1 234 567 890</p>
                    <p><i class="fas fa-envelope"></i> info@motorbay.com</p>
                </div>
                <div class="footer-column">
                    <h3>Newsletter</h3>
                    <p>Subscribe to our newsletter for the latest updates and offers.</p>
                    <form>
                        <input type="email" placeholder="Your Email"
                            style="width: 100%; padding: 10px; margin-bottom: 10px; border-radius: 5px; border: none;">
                        <button type="submit"
                            style="width: 100%; padding: 10px; background-color: var(--primary-color); color: white; border: none; border-radius: 5px; cursor: pointer;">Subscribe</button>
                    </form>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 Motor Bay. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle
        document.querySelector('.mobile-menu').addEventListener('click', function () {
            document.querySelector('.nav-links').classList.toggle('show');
            document.querySelector('.auth-buttons').classList.toggle('show');
        });

        // Smooth Scrolling for Anchor Links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                const targetId = this.getAttribute('href');
                const targetElement = document.querySelector(targetId);

                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                }
            });
        });

        // Add CSS for mobile menu when shown
        const style = document.createElement('style');
        style.textContent = `
            @media (max-width: 768px) {
                .nav-links.show, .auth-buttons.show {
                    display: flex;
                    flex-direction: column;
                    position: absolute;
                    top: 80px;
                    left: 0;
                    width: 100%;
                    background-color: white;
                    padding: 20px;
                    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                }
                
                .nav-links.show li {
                    margin: 10px 0;
                }
                
                .auth-buttons.show {
                    top: 250px;
                    align-items: center;
                }
                
                .auth-buttons.show .login-dropdown,
                .auth-buttons.show .signup-btn {
                    margin: 10px 0;
                }
            }
        `;
        document.head.appendChild(style);
    </script>
</body>

</html>