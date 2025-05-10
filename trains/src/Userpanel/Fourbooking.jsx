import React, { useState, useEffect } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import "./f.css";

function Fourbooking() {
  const [trains, setTrains] = useState([]);

  useEffect(() => {
    const fetchTrains = async () => {
      try {
        const response = await axios.get(
          "http://localhost/trainbackend/controllers/api/User/Get/trainimg.php"
        );
        setTrains(response.data);
      } catch (error) {
        console.error("Error fetching train data:", error);
      }
    };
    fetchTrains();
  }, []);

  return (
    <div className="fail">
    <div className="train-container">
     
      <header className="train-header">
        <h1>🚆 Train Booking System</h1>
      </header>

      {/* Trains Listing */}
      <div className="train-card-container">
        {trains.length > 0 ? (
          trains.map((train) => (
            <div className="train-card" key={train.id}>
              {/* Train Image */}
              <img
                src={`http://localhost/trainbackend/controllers/api/User/upload/${train.file}`}
                alt={train.train_name}
                className="train-image"
              />

              {/* Train Details */}
              <div className="train-details">
                <h2 className="train-name">{train.train_name}</h2>
                <p className="train-price">💰 ₹{train.price}</p>
                <p className="train-route">📍 {train.from} ➝ {train.to}</p>
                <p className="train-date">📅 {train.date}</p>

                <Link
  to={`/fourbook/${train.id}`}
  state={{
    price: train.price,
    train_name: train.train_name,
    from: train.from, 
    to: train.to,     
    date: train.date, 
    train_image: `http://localhost/trainbackend/controllers/api/User/upload/${train.file}`,
  }}
>
  <button className="book-button">Book Now</button>
</Link>

              </div>
            </div>
          ))
        ) : (
          <p className="loading-text">Loading trains...</p>
        )}
      </div>
    </div>
    </div>
  );
  
}

export default Fourbooking;
