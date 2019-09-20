class Gallery < ApplicationRecord
    enum :status, { created: 0, composed: 1, published: 2, recomposed: 3,
     republished: 4, unpublished: 5, rejected: 6}
end
