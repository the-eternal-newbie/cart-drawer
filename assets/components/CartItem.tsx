import React from 'react';
import { number, string } from 'prop-types';
import * as ReactDOM from 'react-dom/client';
import reactToWebComponent from 'react-to-webcomponent';

interface ICartItemProps {
  name: string;
  size: string;
  qty: number;
  price: number;
  thumbnail: string;
}

const CartItem = (props: ICartItemProps) => {
  const { name, size, qty, price, thumbnail } = props;

  const formattedPrice = Number(price).toLocaleString('en-US', {
    style: 'currency',
    currency: 'USD',
  });

  return (
    <div className="flex p-[24px] w-full justify-center border">
      <div className="w-[10%] flex flex-wrap">
        <img className="w-full h-full" src={thumbnail} alt={name} />
      </div>
      <div className="w-[90%] flex flex-col justify-start">
        <p className="text-[20px] mt-4 font-bold  tracking-tighter text-zinc-900 mb-[8px]">
          {name}
        </p>
        <p className="text-[18px] my-[4px]">Size: {size}</p>
        <div className="flex w-full">
          <div className="w-[10%] flex justify-left text-[22px] font-semibold tracking-tighter text-zinc-900 gap-[12px]">
            <p className="border w-[35px] h-[35px] flex justify-center align-middle">
              -
            </p>
            <p className="">{qty}</p>
            <p className="border w-[35px] h-[35px] flex justify-center align-middle">
              +
            </p>
          </div>
          <div className="flex w-[90%] justify-between">
            <p className="text-[22px] font-semibold tracking-tighter text-zinc-900">{`${formattedPrice}`}</p>
            <p className="text-[22px] font-semibold tracking-tighter text-zinc-900">{`${formattedPrice}`}</p>
          </div>
        </div>
      </div>
    </div>
  );
};

CartItem.propTypes = {
  name: string.isRequired,
  price: number.isRequired,
  size: string.isRequired,
  qty: number.isRequired,
  thumbnail: string.isRequired,
};

const CartItemElement = reactToWebComponent(CartItem, React, ReactDOM, {
  dashStyleAttributes: true,
});

customElements.define('cart-item', CartItemElement);
