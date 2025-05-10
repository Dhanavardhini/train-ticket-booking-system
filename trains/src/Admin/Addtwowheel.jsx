import React, { useState, useRef } from 'react';
import axios from 'axios';
import './twowheel.css';

function Addtwowheel() {
  
  const [formData, setFormData] = useState({
    train_name: '',
    price: '',
    from: '',
    to: '',
    date: '',
    file: null,
  });

  const fileInputRef = useRef(null);

  const handleChange = (e) => {
    const { name, value, type, files } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: type === 'file' ? files[0] : value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const payload = new FormData();
    payload.append('train_name', formData.train_name);
    payload.append('price', formData.price);
    payload.append('from', formData.from);
    payload.append('to', formData.to);
    payload.append('date', formData.date);
    payload.append('file', formData.file);

    try {
      const response = await axios.post(
        'http://localhost/trainbackend/controllers/api/User/post/trainimg.php',
        payload,
        {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        }
      );
      console.log('Response:', response.data);
      alert('Train Ticket uploaded successfully!');
      setFormData({
        train_name: '',
        price: '',
        from: '',
        to: '',
        date: '',
        file: null,
      });

      if (fileInputRef.current) {
        fileInputRef.current.value = '';
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Failed to upload Train Ticket. Please try again.');
    }
  };

  return (
    <div className="main-2">
      <div className="twomain">
        <div className="container-two">
          <h1>Upload Train Ticket</h1>
          <form onSubmit={handleSubmit}>
            <div className="form-grid">
              <div className="form-group">
                <label htmlFor="train_name">Train Name:</label>
                <input
                  type="text"
                  id="train_name"
                  name="train_name"
                  value={formData.train_name}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="form-group">
                <label htmlFor="from">From:</label>
                <input
                  type="text"
                  id="from"
                  name="from"
                  value={formData.from}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="form-group">
                <label htmlFor="to">To:</label>
                <input
                  type="text"
                  id="to"
                  name="to"
                  value={formData.to}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="form-group">
                <label htmlFor="date">Date:</label>
                <input
                  type="date"
                  id="date"
                  name="date"
                  value={formData.date}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="form-group">
                <label htmlFor="price">Price:</label>
                <input
                  type="number"
                  id="price"
                  name="price"
                  value={formData.price}
                  onChange={handleChange}
                  min="0"
                  step="0.01"
                  required
                />
              </div>

              <div className="form-group">
                <label htmlFor="image">Ticket Image:</label>
                <input
                  type="file"
                  id="image"
                  name="file"
                  className="file-input"
                  accept="image/*"
                  onChange={handleChange}
                  ref={fileInputRef}
                  required
                />
              </div>
            </div>

            <button type="submit" className="submit-btn">Submit</button>
          </form>
        </div>
      </div>
    </div>
  );
}

export default Addtwowheel;
