<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="css/N_Payment.css">
    <link rel="icon" href="User/Assets/MB.jpg" type="image/x-icon">
</head>
<body>
    <div class="container">
        <h1>Payment</h1>
        
        <div class="payment-section">
            <h2>Payment Details</h2>
            <div class="divider"></div>
            <div class="required-note">* Required field</div>
            
            <form id="payment-form">
                <div class="form-group">
                    <label for="card-type">Card Type <span class="required">*</span></label>
                    <div class="card-options">
                        <label class="card-option" for="visa">
                            <input type="radio" id="visa" name="card-type" value="visa">
                            <div class="card-logo">
                                <img src="User/Assets/Visa.png" alt="Visa">
                            </div>
                            <span>Visa</span>
                        </label>

                        <label class="card-option" for="mastercard">
                            <input type="radio" id="mastercard" name="card-type" value="mastercard">
                            <div class="card-logo">
                                <img src="User/Assets/MasterCard.png" alt="Mastercard">
                            </div>
                            <span>Mastercard</span>
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label for="card-number">Card Number <span class="required">*</span></label>
                    <input type="text" id="card-number" class="form-control" placeholder="Enter card number">
                </div>

                <div class="form-row">
                    <div class="form-group half">
                        <label for="expiration-month">Expiration Month <span class="required">*</span></label>
                        <div class="select-wrapper">
                            <select id="expiration-month" class="form-control">
                                <option value="" selected disabled>Month</option>
                                <option value="01">01 - January</option>
                                <option value="02">02 - February</option>
                                <option value="03">03 - March</option>
                                <option value="04">04 - April</option>
                                <option value="05">05 - May</option>
                                <option value="06">06 - June</option>
                                <option value="07">07 - July</option>
                                <option value="08">08 - August</option>
                                <option value="09">09 - September</option>
                                <option value="10">10 - October</option>
                                <option value="11">11 - November</option>
                                <option value="12">12 - December</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group half">
                        <label for="expiration-year">Expiration Year <span class="required">*</span></label>
                        <div class="select-wrapper">
                            <select id="expiration-year" class="form-control">
                                <option value="" selected disabled>Year</option>
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                                <option value="2026">2026</option>
                                <option value="2027">2027</option>
                                <option value="2028">2028</option>
                                <option value="2029">2029</option>
                                <option value="2030">2030</option>
                                <option value="2031">2031</option>
                                <option value="2032">2032</option>
                                <option value="2033">2033</option>
                                <option value="2034">2034</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="cvn">CVN <span class="required">*</span></label>
                    <input type="text" id="cvn" class="form-control small-input" maxlength="4">
                    <div class="help-text">This code is a 3 or 4 digit number on the back or front of your card.</div>
                </div>

                <div class="order-summary">
                    <h2>Your Order</h2>
                    <div class="divider"></div>
                    <div class="order-row">
                        <span class="order-label">Total amount</span>
                        <span class="order-value" id="total-amount">0.00 Rs</span>
                    </div>
                </div>

                <div class="button-group">
                    <button type="button" class="btn btn-cancel" id="cancel-btn">Cancel</button>
                    <button type="button" class="btn btn-pay" id="pay-btn">Pay</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
