# What
Apply CanCan rules in Javascript. From Will Kehr.


# Usage

```js
import CanCan from 'cancanjs';

class User {
    constructor(user_hash) {
        this.id = user_hash.id
        this.ability = new CanCan(user_hash.some_array_of_can_can_rules);
    }

    can(action, subject) {
        this.ability.can(action, subject);
    }

    cannot(action, subject) {
        this.ability.cannot(action, subject);
    }
}

export default User;
```
