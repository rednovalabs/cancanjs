function CanCanJs(rules) {
    this.rules = rules;
}

CanCanJs.prototype.array_match = function(have, needs) {
    var match = false;
    for(var s = 0; s < have.length; s++) {
        if(needs.indexOf(have[s]) > -1) {
            match = true;
            break;
        }
    }
    return match;
};

CanCanJs.prototype.can = function(action, subject) {
    var can = false,
        subjects = subject.split(","),
        actions = action.split(",");

    for (var i=0; i < this.rules.length; ++i) {
        var rule = this.rules[i],
            can_manage = rule.actions.indexOf("manage") > -1;

        if (can_manage && rule.subjects.indexOf("all") > -1) {
            return rule.can;
        }

        if (!this.array_match(subjects, rule.subjects)) {
            continue;
        }

        if (can_manage || this.array_match(actions, rule.actions)) {
            can = rule.can;
            break;
        }
    }

    return can;
};

CanCanJs.prototype.cannot = function(action, subject) {
    return !this.can(action, subject);
};

if (typeof(module) !== "undefined") {
    module.exports = CanCanJs;
}
