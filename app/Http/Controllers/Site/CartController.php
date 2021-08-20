<?php

namespace App\Http\Controllers\Site;

use Cart;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Darryldecode\Cart\Cart as CartCart;
use Illuminate\Support\Facades\Log;

class CartController extends Controller
{
    //
    public function getCart()
    {
        return view('site.pages.cart');
    }

    public function removeItem($id)
    {
        Cart::remove($id);
        
        return redirect()->back()->with('message', 'Item removed from cart successfully.');
    }

    public function clearCart()
    {
        Cart::clear();
    
        return redirect('/');
    }
    
    /**
     * update a cart
     *
     * @param $id (the item ID)
     * @param array $data
     *
     * the $data will be an associative array, you don't need to pass all the data, only the key value
     * of the item you want to update on it
     */
    public function updateCart($id)
    {
        $data = [
            'quantity' => 2,
        ];
        Cart::update($id, $data);
    
        return redirect()->back()->with('message', 'cart updated successfully.');
    }
    
    /**
     * update a cart
     *
     * @param $id (the item ID)
     * @param array $data
     *
     * the $data will be an associative array, you don't need to pass all the data, only the key value
     * of the item you want to update on it
     */
    public function minusItem($id)
    {
        $items = Cart::getContent();
        foreach($items as $item)
        {
            if ($item->id == $id) {
                $qty = $item->quantity;
                break;
            }
        }
        Log::info($qty);
        if ($qty <= 1) {
            return redirect()->back()->with('error', 'can not minus');
        }
        else {
            $data = [
                'quantity' => -1,
            ];
            Cart::update($id, $data);
        
            return redirect()->back()->with('message', 'cart updated successfully.');
        }
    }
    
    /**
     * update a cart
     *
     * @param $id (the item ID)
     * @param array $data
     *
     * the $data will be an associative array, you don't need to pass all the data, only the key value
     * of the item you want to update on it
     */
    public function plusItem($id)
    {
        
        $items = Cart::getContent();
        foreach($items as $item)
        {
            if ($item->id == $id) {
                $qty = $item->quantity;
                break;
            }
        }
        Log::info($qty);
        if ($qty >= 100) {
            return redirect()->back()->with('error', 'item quantity was not enought');
        }
        else {
            $data = [
                'quantity' => 1,
            ];
            Cart::update($id, $data);
        
            return redirect()->back()->with('message', 'cart updated successfully.');
        }
    }
}
