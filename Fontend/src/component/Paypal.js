import React, { useEffect, useRef, useState } from "react";
import { FIXED_PRICE } from "../constants/constant";
import { message } from "antd";

const PayPalButton = ({ description, onUpdate }) => {
  const paypalRef = useRef(null);
  const [loaded, setLoaded] = useState(false);

  useEffect(() => {
    // Check if the PayPal script is already loaded
    if (window.paypal) {
      setLoaded(true);
      return;
    }

    // Load the PayPal SDK script dynamically
    const script = document.createElement("script");
    script.src =
      "https://www.paypal.com/sdk/js?client-id=AayieH_h5gZF4tplxfTx-TLH3NvSFKRHKwdQpJJa7sn7dT6g45lnlUcKtaM2uSYzfysCYxoNNk16YL6w&buyer-country=US&currency=USD&components=buttons";
    script.onload = () => setLoaded(true);
    document.body.appendChild(script);

    return () => {
      // Clean up by removing the script when the component is unmounted
      if (script) document.body.removeChild(script);
    };
  }, []);

  useEffect(() => {
    if (loaded && window.paypal) {
      window.paypal
        .Buttons({
          style: {
            width: "50%", // Set width to 50%
            shape: "pill",
            layout: "horizontal",
            color: "blue",
            label: "paypal",
          },
          createOrder: (data, actions) => {
            return actions.order.create({
              purchase_units: [
                {
                  description: description,
                  amount: {
                    currency_code: "USD",
                    value: FIXED_PRICE,
                  },
                },
              ],
            });
          },
          onApprove: async (data, actions) => {
            const order = await actions.order.capture();
            if (order.status === "COMPLETED") {
              onUpdate(order);
            } else {
              message.success("Transaction failed to complete.");
            }
          },
          onError: (err) => {
            console.error("PayPal button error:", err);
            message.error("An error occurred with the PayPal transaction.");
          },
        })
        .render(paypalRef.current);
    }
  }, [loaded, description, onUpdate]);

  return <div ref={paypalRef}></div>;
};

PayPalButton.defaultProps = {
  price: 0,
  description: "",
  onUpdate: () => { },
};

export default PayPalButton;
