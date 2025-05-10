import React, { useState, useEffect } from 'react';
import './Dashboard.css';
import { FaAngleDoubleDown } from 'react-icons/fa';
import axios from 'axios';

export default function Dashboard() {
    const [businessClassTickets, setBusinessClassTickets] = useState(0);
    const [firstClassTickets, setFirstClassTickets] = useState(0);

    useEffect(() => {
        axios.get('http://localhost/trainbackend/controllers/api/User/Get/trainbookuser.php')
            .then(response => {
                console.log('Business Class Tickets Response:', response.data);
                const count = response.data.length;
                setBusinessClassTickets(count); 
            })
            .catch(error => {
                console.error('Error fetching business class tickets:', error);
            });

       
        axios.get('http://localhost/houserentbackend/controllers/api/admin/get/villabook.php')
            .then(response => {
                console.log('First Class Tickets Response:', response.data);
                const count = response.data.length;
                setFirstClassTickets(count);
            })
            .catch(error => {
                console.error('Error fetching first class tickets:', error);
            });
    }, []); 

    return (
        <>
            <main className="main-content">
                <div className="container">
                    <section className="summary-cards">
                        <div className="card1">
                            <h2>TRAIN TICKET BOOKING</h2>
                            <p><FaAngleDoubleDown /></p>
                        </div>
                       

                        <div className="card2">
                            <h3>TRAIN TICKET BOOK</h3>
                            <p>{businessClassTickets}</p> 
                        </div>
                      
                    </section>
                </div>
            </main>
        </>
    );
}
