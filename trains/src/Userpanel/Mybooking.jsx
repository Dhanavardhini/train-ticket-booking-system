import React, { useEffect, useState } from 'react';
import './mybook.css';

function Mybooking() {
  const [bookings, setBookings] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchBookings = async () => {
      try {
        const response = await fetch('http://localhost/trainbackend/controllers/api/User/Get/trainbookuser.php');
        const data = await response.json();
        setBookings(data);
      } catch (error) {
        setError('Failed to fetch booking details');
      } finally {
        setLoading(false);
      }
    };
    fetchBookings();
  }, []);

  return (
    <div className="train-booking-list">
      <h1>Train Bookings</h1>
      {loading && <p>Loading...</p>}
      {error && <p className="error-message">{error}</p>}
      <table className="train-table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Train Name</th>
            <th>From</th>
            <th>To</th>
            <th>Tickets</th>
            <th>Date</th>
            <th>Price</th>
            <th>Payment</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          {bookings.length === 0 ? (
            <tr><td colSpan="11">No bookings available</td></tr>
          ) : (
            bookings.map((booking, index) => (
              <tr key={index}>
                <td>{booking.name}</td>
                <td>{booking.email}</td>
                <td>{booking.phone}</td>
                <td>{booking.train_name}</td>
                <td>{booking.from}</td>
                <td>{booking.to}</td>
                <td>{booking.tickets}</td>
                <td>{booking.date}</td>
                <td>{booking.price}</td>
                <td>{booking.payment}</td>
                <td>{booking.status}</td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
}

export default Mybooking;