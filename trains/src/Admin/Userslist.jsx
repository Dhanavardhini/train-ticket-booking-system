import axios from "axios";
import "./userlist.css";
import React, { useEffect, useState } from "react";

function Userslist() {
  const [bookings, setBookings] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [editingBookingId, setEditingBookingId] = useState(null);
  const [editFormData, setEditFormData] = useState({});

  useEffect(() => {
    const fetchBookings = async () => {
      try {
        const response = await axios.get(
          "http://localhost/trainbackend/controllers/api/User/Get/trainbookuser.php"
        );
        setBookings(response.data);
        setLoading(false);
      } catch (err) {
        console.error("Error fetching bookings:", err);
        setError("Failed to fetch booking data");
        setLoading(false);
      }
    };
    fetchBookings();
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setEditFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleEditClick = (booking) => {
    setEditingBookingId(booking.id);
    setEditFormData(booking);
  };

  const handleSaveClick = async () => {
    try {
      await axios.put(
        "http://localhost/trainbackend/controllers/api/admin/put/trainuserupdate.php",
        editFormData
      );
      setBookings((prevBookings) =>
        prevBookings.map((booking) =>
          booking.id === editingBookingId ? { ...booking, ...editFormData } : booking
        )
      );
      setEditingBookingId(null);
      alert("Booking updated successfully");
    } catch (err) {
      console.error("Error updating booking:", err);
      alert("Failed to update booking");
    }
  };

  const handleCancelClick = () => {
    setEditingBookingId(null);
  };

  const handleDelete = async (id) => {
    try {
      const response = await axios.post(
        "http://localhost/trainbackend/controllers/api/admin/delete/traindelete.php",
        { id }
      );
      if (response.data.message === "success") {
        setBookings((prevBookings) => prevBookings.filter((booking) => booking.id !== id));
        alert("Booking deleted successfully");
      } else {
        throw new Error(response.data?.message || "Unknown error occurred");
      }
    } catch (err) {
      console.error("Error deleting booking:", err);
      alert("Failed to delete booking");
    }
  };

  if (loading) return <div>Loading...</div>;

  if (error) return <div className="error-message">{error}</div>;

  return (
    <div className="booking-container">
      <table className="booking-table">
        <thead>
          <tr>
            <th>ID</th>
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
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {bookings.map((booking) => (
            <tr key={booking.id} className={editingBookingId === booking.id ? "editing-row" : ""}>
              {editingBookingId === booking.id ? (
                <>
                  <td><input type="text" name="id" value={editFormData.id} readOnly /></td>
                  <td><input type="text" name="name" value={editFormData.name} onChange={handleInputChange} /></td>
                  <td><input type="email" name="email" value={editFormData.email} onChange={handleInputChange} /></td>
                  <td><input type="text" name="phone" value={editFormData.phone} onChange={handleInputChange} /></td>
                  <td><input type="text" name="train_name" value={editFormData.train_name} onChange={handleInputChange} /></td>
                  <td><input type="text" name="from" value={editFormData.from} onChange={handleInputChange} /></td>
                  <td><input type="text" name="to" value={editFormData.to} onChange={handleInputChange} /></td>
                  <td><input type="number" name="tickets" value={editFormData.tickets} onChange={handleInputChange} /></td>
                  <td><input type="date" name="date" value={editFormData.date} onChange={handleInputChange} /></td>
                  <td><input type="number" name="price" value={editFormData.price} onChange={handleInputChange} /></td>
                  <td><input type="text" name="payment" value={editFormData.payment} onChange={handleInputChange} /></td>
                  <td><input type="text" name="status" value={editFormData.status} onChange={handleInputChange} /></td>
                  <td>
                    <button onClick={handleSaveClick}>Save</button>
                    <button onClick={handleCancelClick}>Cancel</button>
                  </td>
                </>
              ) : (
                <>
                  <td>{booking.id}</td>
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
                  <td>
                    <button onClick={() => handleEditClick(booking)}>Edit</button>
                    <button onClick={() => handleDelete(booking.id)}>Delete</button>
                  </td>
                </>
              )}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );  
}

export default Userslist;
