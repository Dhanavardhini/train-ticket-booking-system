
import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate, useLocation } from "react-router-dom";
import "./bookform.css";

function Bookings() {
  const navigate = useNavigate();
  const location = useLocation();

  const { train_name = "", from = "", to = "", date = "", price = 0 } = location.state || {};


  const [formData, setFormData] = useState({
    name: "",
    email: "",
    phone: "",
    train_name,
    from,
    to,
    tickets: 1,
    date,
    price,
    payment: "",
    status:""
  });
  
  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value,
      price: name === "tickets" ? value * price : prevData.price
    }));
  };
  

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "http://localhost/trainbackend/controllers/api/User/post/trainbook.php",
        formData,
        { headers: { "Content-Type": "application/json" } }
      );
      console.log(response.data.message);
      alert("Train Booking Successful!");
      navigate("/bookfour");
    } catch (error) {
      console.error("Error during booking:", error);
      alert("An error occurred while booking.");
    }
  };

  return (
    <div className="vr-body">
      <div className="vr-container">
        <h1 className="vr-title">Train Ticket Booking Form</h1>
        <form className="vr-form" onSubmit={handleSubmit}>
          <div className="vr-form-group">
            <label className="vr-label">Train Name:</label>
            <input className="vr-input" type="text" name="train_name" value={formData.train_name} readOnly />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Name:</label>
            <input className="vr-input" type="text" name="name" value={formData.name} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Email:</label>
            <input className="vr-input" type="email" name="email" value={formData.email} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Phone Number:</label>
            <input className="vr-input" type="number" name="phone" value={formData.phone} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">From:</label>
            <input className="vr-input" type="text" name="from" value={formData.from} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">To:</label>
            <input className="vr-input" type="text" name="to" value={formData.to} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Number of Tickets:</label>
            <input className="vr-input" type="number" name="tickets" value={formData.tickets} onChange={handleChange} required min="1" />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Travel Date:</label>
            <input className="vr-input" type="date" name="date" value={formData.date} onChange={handleChange} required />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Total Price:</label>
            <input className="vr-input" type="text" name="price" value={formData.price} readOnly />
          </div>
          <div className="vr-form-group">
            <label className="vr-label">Payment Method:</label>
            <input className="vr-input" type="text" name="payment" value={formData.payment} onChange={handleChange} required />
          </div>
          <button className="vr-submit-btn" type="submit">Book Train Ticket</button>
        </form>
      </div>
    </div>
  );
}

export default Bookings;
