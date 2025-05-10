import React from 'react';
import "./userlanding.css";
import { Link } from 'react-router-dom';

function Userlanding() {
  return (
    <>
    <div className="user1-main">
        <nav className="navbar-user">
            <div className="navbar-container">
                <div className="logo">TRAIN TICKET BOOKING SYSTEM</div>
                <ul className="nav-links">
                   <li><a href="#">Home</a></li>
                    <Link to={"/mybooking"}><li><a href="#">My Bookings</a></li></Link>
                    <Link to={"/userlogin"}><li><a href="#">Logout</a></li></Link>
                </ul>
            </div>
        </nav>

        {/* Main Flex Section */}
        <div className="flex-container">
            <div className="flex-item">
                <h1>Plan Your Train Journey</h1>
                <p>Book tickets seamlessly and enjoy a comfortable journey.</p>
                {/* <Link to={"/booktwo"}><a href="#" class="cta-button">Search Trains</a></Link> */}
                <Link to={"/bookfour"}><a href="#" class="cta-button">view trains</a></Link>
            </div>

            <div className="flex-item">
                <h2>POPULAR ROUTES</h2><br></br>
                <div className="property-list">
                    <div className="property-card">
                        <h3>Express Train</h3><br></br>
                        <p>Fast and comfortable journeys to major cities.</p>
                        <Link to={"/bookfour"}><a href="#" class="btnu">Book Now</a></Link>
                    </div>
                  
                </div>
            </div>
        </div>

        {/* Footer */}
        <footer className="footer">
            <div className="footer-container">
                <p>&copy; 2025 Train Ticket Booking System. All rights reserved.</p>
                <ul className="footer-links">
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
        </footer>
    </div>
    </>
  );
}

export default Userlanding;
