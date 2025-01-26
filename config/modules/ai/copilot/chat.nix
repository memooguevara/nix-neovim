{helpers, ...}: {
  plugins = {
    copilot-chat = {
      enable = true;
      settings = {
        question_header = "## User ";
        answer_header = "## Copilot ";
        error_header = "## Error ";
        auto_follow_cursor = false;
        show_help = false;
        prompts = {
          DocsForGitHub.prompt = "/COPILOT_GENERATE Please provide documentation for the following code ready for GitHub using markdown.";
          BetterNamings.prompt = "/COPILOT_GENERATE Please provide better names for the following variables and functions.";
          Summarize.prompt = "/COPILOT_GENERATE Please summarize the following text.";
        };
      };
    };
  };

  keymaps = [
    {
      key = "<leader>ct";
      action = "<CMD>CopilotChatToggle<CR>";
      options.desc = "Toggle Copilot Chat Window";
    }
    {
      key = "<leader>cs";
      action = "<CMD>CopilotChatStop<CR>";
      options.desc = "Stop current Copilot output";
    }
    {
      key = "<leader>cr";
      action = "<CMD>CopilotChatReview<CR>";
      options.desc = "Review the selected code";
    }
    {
      key = "<leader>ce";
      action = "<CMD>CopilotChatExplain<CR>";
      options.desc = "Give an explanation for the selected code";
    }
    {
      key = "<leader>cd";
      action = "<CMD>CopilotChatDocs<CR>";
      options.desc = "Add documentation for the selection";
    }
    {
      key = "<leader>cp";
      action = "<CMD>CopilotChatTests<CR>";
      options.desc = "Add tests for my code";
    }
    {
      key = "<leader>ccq";
      action = helpers.mkRaw ''
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end
      '';
      options.desc = "CopilotChat - Quick chat";
    }
    {
      key = "<leader>cch";
      action = helpers.mkRaw ''
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end
      '';
      options.desc = "CopilotChat - Help actions";
    }
    {
      key = "<leader>ccp";
      action = helpers.mkRaw ''
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end
      '';
      options.desc = "CopilotChat - Prompt actions";
    }
  ];
}
