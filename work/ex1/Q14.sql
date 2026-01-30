SELECT store.store_id, address.address, city.city AS cityname FROM store
    JOIN address ON store.address_id = address.address_id
    JOIN city ON address.city_id = city.city_id;