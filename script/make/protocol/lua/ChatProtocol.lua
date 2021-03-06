local chatProtocol = {
    ["write"] = {
        [11601] = {
            {name = "result", type = "rst", comment = "结果", explain = {}},
            {name = "userId", type = "u64", comment = "角色ID", explain = {}},
            {name = "userName", type = "bst", comment = "角色名字", explain = {}},
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        },
        [11602] = {
            {name = "result", type = "rst", comment = "结果", explain = {}},
            {name = "userId", type = "u64", comment = "角色ID", explain = {}},
            {name = "userName", type = "bst", comment = "角色名字", explain = {}},
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        },
        [11603] = {
            {name = "result", type = "rst", comment = "结果", explain = {}},
            {name = "userId", type = "u64", comment = "角色ID", explain = {}},
            {name = "userName", type = "bst", comment = "角色名字", explain = {}},
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        }
    },
    ["read"] = {
        [11601] = {
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        },
        [11602] = {
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        },
        [11603] = {
            {name = "userId", type = "u64", comment = "角色ID", explain = {}},
            {name = "msg", type = "bst", comment = "消息", explain = {}}
        }
    }
}