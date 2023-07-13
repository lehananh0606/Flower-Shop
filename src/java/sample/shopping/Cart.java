/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author MSI GF63
 */
public class Cart {

    private Map<String, Product> cart;

    public Cart() {
    }

    public Cart(Map<String, Product> cart) {
        this.cart = cart;
    }

    public Map<String, Product> getCart() {
        return cart;
    }

    public void setCart(Map<String, Product> cart) {
        this.cart = cart;
    }

    public boolean add(Product p) {
        boolean check = false;
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        if (this.cart.containsKey(p.getId())) {
            int currentQuantity = this.cart.get(p.getId()).getQuantity();
            p.setQuantity(currentQuantity + p.getQuantity());
        }
        this.cart.put(p.getId(), p);
        check = true;
        return check;
    }

    public boolean edit(String id, Product p) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                cart.replace(id, p);
                check = true;
            }
        }
        return check;
    }

    public boolean remove(String id) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                cart.remove(id);
                check = true;
            }
        }
        return check;
    }
}
