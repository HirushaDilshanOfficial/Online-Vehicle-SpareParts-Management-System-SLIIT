<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms and Conditions - Motor Bay</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'motorbay': '#097396',
                        'motorbay-dark': '#065670',
                        'motorbay-light': '#e6f3f7'
                    },
                }
            }
        }
    </script>
    <style>
        .section-content {
            display: none;
            transition: all 0.3s ease;
        }
        
        .section-content.active {
            display: block;
        }

        .rotate-icon {
            transform: rotate(180deg);
            transition: transform 0.3s ease;
        }
        
        .hover-effect:hover {
            background-color: #e6f3f7;
            transition: background-color 0.3s ease;
        }
    </style>
</head>
<body class="bg-gray-50">
    <div class="container mx-auto px-4 py-8 max-w-4xl">
        <!-- Back Button -->
        <div class="mb-8">
            <a href="index.jsp" class="inline-flex items-center px-4 py-2 bg-motorbay text-white rounded-lg hover:bg-motorbay-dark transition-colors duration-300">
                <i class="fas fa-arrow-left mr-2"></i> Back to Home
            </a>
        </div>

        <header class="text-center mb-12">
            <h1 class="text-4xl font-bold text-motorbay mb-4">Terms and Conditions</h1>
            <p class="text-gray-600">Last Updated: <span id="lastUpdated"></span></p>
        </header>

        <div class="space-y-4">
           
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-book mr-3"></i>
                        General Use of Website
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">1.1. Eligibility</h3>
                        <p class="text-gray-700 mb-4">To use our website and services, you must be at least 18 years old and capable of forming legally binding contracts. If you are using this site on behalf of a company or organization, you affirm that you have the authority to bind that company or organization to these Terms and Conditions.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">1.2. Access and Use</h3>
                        <p class="text-gray-700 mb-4">You are granted a non-exclusive, non-transferable, revocable license to access and use our website for personal or business purposes related to vehicle spare parts management. Unauthorized use of the website, including, but not limited to, unauthorized access to the website's services, systems, or data, is prohibited.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">1.3. Account Registration</h3>
                        <p class="text-gray-700">To access certain features of the service, you may need to register for an account. You agree to provide accurate, complete, and current information during the registration process and update your information as necessary. You are responsible for maintaining the confidentiality of your account credentials.</p>
                    </div>
                </div>
            </div>

            <!-- Products and Services Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-box mr-3"></i>
                        Products and Services
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">2.1. Product Information</h3>
                        <p class="text-gray-700 mb-4">We aim to provide accurate descriptions, specifications, and images of vehicle spare parts. However, we do not guarantee the accuracy, completeness, or reliability of such information. Spare parts may vary slightly due to manufacturers' variations, and we reserve the right to correct any errors or omissions in the descriptions and pricing at any time.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">2.2. Product Availability</h3>
                        <p class="text-gray-700 mb-4">All products displayed on our website are subject to availability. If a product is out of stock or no longer available, we will inform you as soon as possible and may offer alternative products, or you may choose to cancel the order.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">2.3. Pricing and Payment</h3>
                        <p class="text-gray-700">All prices listed on our website are in USD, unless otherwise stated. Prices are subject to change without notice. Taxes, shipping fees, and other applicable charges may be added to your order at checkout. Payment for orders must be made via the available payment methods on the website.</p>
                    </div>
                </div>
            </div>

            <!-- Ordering and Shipping Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-truck mr-3"></i>
                        Ordering and Shipping
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">3.1. Order Confirmation</h3>
                        <p class="text-gray-700 mb-4">Once you place an order, you will receive a confirmation email containing the details of your order. Please note that this confirmation does not guarantee that the product is available or that the transaction is complete. We reserve the right to cancel or refuse any order.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">3.2. Shipping and Delivery</h3>
                        <p class="text-gray-700 mb-4">We will make reasonable efforts to ship orders within the timeframes specified on the website. Delivery times may vary based on your location and the shipping method selected. We are not responsible for delays caused by third-party carriers, customs, or other unforeseen events.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">3.3. Shipping Costs</h3>
                        <p class="text-gray-700">Shipping costs will be calculated based on the delivery address and the shipping method you choose. These costs will be displayed during the checkout process.</p>
                    </div>
                </div>
            </div>

            <!-- Returns and Refunds Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-exchange-alt mr-3"></i>
                        Returns and Refunds
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">4.1. Return Policy</h3>
                        <p class="text-gray-700 mb-4">We accept returns for defective or damaged spare parts within 30 days from the date of delivery. All returned items must be in original condition and packaging. If the product is not defective or damaged, returns may be subject to a restocking fee.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">4.2. Refunds</h3>
                        <p class="text-gray-700">If you are eligible for a refund, it will be processed through the original payment method. Refunds are typically processed within 7-10 business days after the return is received and inspected.</p>
                    </div>
                </div>
            </div>

            <!-- User Conduct Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-user-shield mr-3"></i>
                        User Conduct
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">5.1. Prohibited Activities</h3>
                        <p class="text-gray-700 mb-4">You agree not to engage in the following activities:</p>
                        <ul class="list-disc pl-6 mb-4 text-gray-700">
                            <li>Interfere with or disrupt the website or services.</li>
                            <li>Attempt to gain unauthorized access to the website or related systems.</li>
                            <li>Use the website for unlawful purposes or in violation of any applicable laws or regulations.</li>
                            <li>Post or transmit content that is unlawful, harmful, defamatory, obscene, or otherwise objectionable.</li>
                        </ul>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">5.2. Content Submission</h3>
                        <p class="text-gray-700">Any content you submit to the website, including but not limited to product reviews, comments, or other feedback, must comply with our content guidelines and may be moderated or removed at our discretion.</p>
                    </div>
                </div>
            </div>

            <!-- Intellectual Property Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-copyright mr-3"></i>
                        Intellectual Property
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">6.1. Ownership</h3>
                        <p class="text-gray-700 mb-4">All content, trademarks, logos, images, and other materials on the website are owned by Motor Bay or its licensors and are protected by intellectual property laws. You may not use, reproduce, or distribute any of these materials without our prior written consent.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">6.2. License</h3>
                        <p class="text-gray-700">By submitting content to our website, you grant us a worldwide, royalty-free, non-exclusive license to use, modify, distribute, and display such content in connection with the website and its services.</p>
                    </div>
                </div>
            </div>

            <!-- Privacy and Data Security Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-shield-alt mr-3"></i>
                        Privacy and Data Security
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">7.1. Privacy Policy</h3>
                        <p class="text-gray-700 mb-4">Your use of the website is also governed by our Privacy Policy, which can be found at <a href="privacy.html" class="text-motorbay hover:underline">Privacy Policy</a>. By using the website, you consent to the collection and use of your information as outlined in the Privacy Policy.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">7.2. Data Security</h3>
                        <p class="text-gray-700">We take reasonable measures to protect your personal information. However, no method of transmission over the internet or electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security.</p>
                    </div>
                </div>
            </div>

            <!-- Limitation of Liability Section -->
            <div class="bg-white rounded-lg shadow-md hover-effect">
                <div class="section-header cursor-pointer flex justify-between items-center p-6 border-l-4 border-motorbay">
                    <h2 class="text-2xl font-semibold text-motorbay">
                        <i class="fas fa-exclamation-triangle mr-3"></i>
                        Limitation of Liability
                    </h2>
                    <i class="fas fa-chevron-down text-motorbay transition-transform duration-300"></i>
                </div>
                <div class="section-content p-6 pt-0">
                    <div class="border-t border-gray-200 pt-4">
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">8.1. Disclaimer of Warranties</h3>
                        <p class="text-gray-700 mb-4">The website and its services are provided "as is" without any warranties of any kind, either express or implied, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, or non-infringement.</p>
                        
                        <h3 class="text-xl font-semibold mb-2 text-motorbay-dark">8.2. Limitation of Liability</h3>
                        <p class="text-gray-700">In no event shall Motor Bay, its officers, directors, employees, or agents be liable for any indirect, incidental, special, consequential, or punitive damages, including without limitation, loss of profits, data, use, goodwill, or other intangible losses, resulting from your access to or use of or inability to access or use the website.</p>
                    </div>
                </div>
            </div>
        </div>

        <footer class="mt-12 text-center text-gray-600">
            <p>© 2023 Motor Bay. All rights reserved.</p>
        </footer>
    </div>

    <script>
        // Set current date
        const today = new Date();
        document.getElementById('lastUpdated').textContent = today.toLocaleDateString();

        // Toggle sections
        document.querySelectorAll('.section-header').forEach(header => {
            header.addEventListener('click', () => {
                const content = header.nextElementSibling;
                const icon = header.querySelector('.fa-chevron-down');
                
                content.classList.toggle('active');
                icon.classList.toggle('rotate-icon');
                
                // Smooth scroll to the section
                if (content.classList.contains('active')) {
                    header.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            });
        });

        // Open the first section by default
        document.querySelector('.section-header').click();
    </script>
</body>
</html>