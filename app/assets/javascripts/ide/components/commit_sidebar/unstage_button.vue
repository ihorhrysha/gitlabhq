<script>
import { mapActions } from 'vuex';
import Icon from '~/vue_shared/components/icon.vue';
import tooltip from '~/vue_shared/directives/tooltip';

export default {
  components: {
    Icon,
  },
  directives: {
    tooltip,
  },
  props: {
    path: {
      type: String,
      required: true,
    },
  },
  methods: {
    ...mapActions(['unstageChange']),
  },
};
</script>

<template>
  <div
    v-once
    class="multi-file-discard-btn"
  >
    <button
      v-tooltip
      :aria-label="__('Unstage changes')"
      :title="__('Unstage changes')"
      type="button"
      class="btn btn-blank d-flex align-items-center"
      data-container="body"
      data-boundary="viewport"
      data-placement="bottom"
      @click="unstageChange(path)"
    >
      <icon
        :size="12"
        name="history"
      />
    </button>
  </div>
</template>
