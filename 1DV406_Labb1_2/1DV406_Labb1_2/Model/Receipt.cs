using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1DV406_Labb1_2.Model
{
    public class Receipt
    {
      
        private double _subtotal;// Privat Variabel  

        public double DiscountRate { get; private set; }// representerar rabatten i procent

      
        public double MoneyOff { get; private set; }// representerar rabatten i kronor

  
        public Receipt(double subtotal)// Konstruktor
        {
            Calculate(subtotal);
        }

   
        public double Subtotal// representerar den totala köpesumman 
        {
            get
            {
                return _subtotal;
            }
            set
            {
                if (value <= 0.0)// kontrolärar om köpesuman är störe än 0
                {
                    throw new ArgumentOutOfRangeException("Måste vara ett tal större än 0");
                }
                _subtotal = value;
            }
        }


        public double Total { get; private set; } // Egenskap som har köpbeloppt efter att rabatten dragits från den totala köpesumman

        
        public void Calculate(double subtotal)// funktion beräknar rabatten och totala suman man ska betala
        {
            Subtotal = subtotal;

            if (Subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (Subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (Subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        
    }
}