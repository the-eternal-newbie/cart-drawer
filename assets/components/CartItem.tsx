import React from 'react';
import { number, string } from 'prop-types';
import * as ReactDOM from 'react-dom/client';
import reactToWebComponent from 'react-to-webcomponent';

interface ICartItemProps {
  name: string;
  price: number;
}

const CartItem = ({ name, price }: ICartItemProps) => {
  return (
    <div>
      <p>{name}</p>
      <p>{`$${price}`}</p>
    </div>
  );
};

CartItem.propTypes = {
  name: string.isRequired,
  price: number.isRequired,
};

const CartItemElement = reactToWebComponent(CartItem, React, ReactDOM);

customElements.define('cart-item', CartItemElement);
